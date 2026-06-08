import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/score/score.dart';
import 'package:rabbaanii_portal/models/wordpress/wp_post.dart';
import 'package:rabbaanii_portal/presentation/activity/student_activity_screen.dart';
import 'package:rabbaanii_portal/presentation/activity/tahfidz_activity_screen.dart';
import 'package:rabbaanii_portal/presentation/calendar/calendar_school_screen.dart';
import 'package:rabbaanii_portal/presentation/card/student_card_screen.dart';
import 'package:rabbaanii_portal/presentation/donate/donate_mosquee_screen.dart';
import 'package:rabbaanii_portal/presentation/forgot/forgot_screen.dart';
import 'package:rabbaanii_portal/presentation/health/detail_student_health_screen.dart';
import 'package:rabbaanii_portal/presentation/health/student_health_screen.dart';
import 'package:rabbaanii_portal/presentation/holiday/pickup_registration_screen.dart';
import 'package:rabbaanii_portal/presentation/holiday/qr_pickup_screen.dart';
import 'package:rabbaanii_portal/presentation/holiday/student_homecoming_screen.dart';
import 'package:rabbaanii_portal/presentation/home/home_screen.dart';
import 'package:rabbaanii_portal/presentation/login/login_screen.dart';
import 'package:rabbaanii_portal/presentation/permit/add_permit_screen.dart';
import 'package:rabbaanii_portal/presentation/permit/detail_permit_screen.dart';
import 'package:rabbaanii_portal/presentation/permit/permit_screen.dart';
import 'package:rabbaanii_portal/presentation/register/register_screen.dart';
import 'package:rabbaanii_portal/presentation/report/finance_report_screen.dart';
import 'package:rabbaanii_portal/presentation/score/student_score_screen.dart';
import 'package:rabbaanii_portal/presentation/score/subject_screen.dart';
import 'package:rabbaanii_portal/presentation/settings/setting/account_screen.dart';
import 'package:rabbaanii_portal/presentation/settings/setting/change_password_screen.dart';
import 'package:rabbaanii_portal/presentation/settings/setting/setting_screen.dart';
import 'package:rabbaanii_portal/presentation/violation/detail_violation_screen.dart';
import 'package:rabbaanii_portal/presentation/violation/mukholif_detail_screen.dart';
import 'package:rabbaanii_portal/presentation/violation/mukholif_search_screen.dart';
import 'package:rabbaanii_portal/presentation/violation/violation_list_screen.dart';
import 'package:rabbaanii_portal/res/strings.dart';
import 'package:rabbaanii_portal/utils/adaptive_scaffold.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rabbaanii_portal/presentation/analytics/analytics_dashboard_screen.dart';

import '../models/prayer/hadith/book_response.dart';
import '../models/prayer/surah/surah.dart';
import '../presentation/activity/school_activity_screen.dart';
import '../presentation/guest/guest_news_screen.dart';
import '../presentation/guest/guest_prayer_screen.dart';
import '../presentation/guest/guest_shell.dart';
import '../presentation/guest/guest_user_screen.dart';
import '../presentation/holiday/holiday_screen.dart';
import '../presentation/not_found/not_found_screen.dart';
import '../presentation/prayer/ayah_screen.dart';
import '../presentation/prayer/book_screen.dart';
import '../presentation/prayer/dhikr_screen.dart';
import '../presentation/prayer/hadith_screen.dart';
import '../presentation/prayer/murottal_screen.dart';
import '../presentation/prayer/pray_screen.dart';
import '../presentation/prayer/prayer_screen.dart';
import '../presentation/prayer/prayer_time_screen.dart';
import '../presentation/prayer/qibla_compass_screen.dart';
import '../presentation/prayer/surah_screen.dart';
import '../presentation/score/student_score_detail_screen.dart';
import '../presentation/tv/tv_screen.dart';
import '../presentation/webview/webview_screen.dart';
import '../presentation/wordpress/wp_post_detail_screen.dart';

part 'app_router.g.dart';

enum AppRoute {
  home,
  login,
  forgot,
  register,
  news,
  prayer,
  setting,
  hadith,
  prayerTime,
  qibla,
  dhikr,
  quran,
  tv,
  murottal,
  books,
  ayah,
  detailNews,
  pray,
  qiblaMaps,
  studentPermit,
  bill,
  studentHealth,
  studentCard,
  studentSaving,
  studentEvaluation,
  studentViolation,
  studentActivity,
  studentHoliday,
  educationCalendar,
  financialStatement,
  account,
  changePassword,
  privacyPolicy,
  aboutUs,
  agreement,
  detailPermit,
  addPermit,
  addStudentPermit,
  detailStudentPermit,
  detailStudentHealth,
  subject,
  scoreDetail,
  studentScore,
  detailViolation,
  homecoming,
  registrationPickup,
  qrPickup,
  schoolActivity, tahfidzActivity, calendarSchool, financeReport, donate, analyticsDashboard,
  guestNews,
  guestDetailNews,
  guestPrayer,
  guestUser,
  mukholifSearch,
  mukholifDetail,
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _guestShellStateKey = GlobalKey<StatefulNavigationShellState>();
final _guestNewsNavigatorKey = GlobalKey<NavigatorState>();
final _guestPrayerNavigatorKey = GlobalKey<NavigatorState>();
final _guestUserNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>();
final _shellNavigatorBKey = GlobalKey<NavigatorState>();
final _shellNavigatorCKey = GlobalKey<NavigatorState>();
final _shellNavigatorDKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/guest-news',
    navigatorKey: _rootNavigatorKey,
    errorBuilder: (context, state) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.go('/guest-news');
      });
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    },
    redirect: (context, state) async {
      final goingToLogin = state.matchedLocation.startsWith('/login');
      final goingToGuest = state.matchedLocation.contains('/guest-');

      Map<String, dynamic>? session;
      try {
        session = ref
            .read(sharedPreferencesHelperProvider)
            .getObject<Map<String, dynamic>>(AppConstant.keyLoginSession);
      } catch (_) {
        session = null;
      }

      final sessionKey = session?['key']?.toString().trim();
      final isLoggedIn = sessionKey != null &&
          sessionKey.isNotEmpty &&
          sessionKey.toLowerCase() != 'null';

      if (!isLoggedIn) {
        if (goingToGuest || goingToLogin) {
          return null;
        }
        return '/guest-news';
      }

      if (goingToGuest || goingToLogin) {
        return '/';
      }

      return null;
    },
    routes: [
      StatefulShellRoute.indexedStack(
        key: _guestShellStateKey,
        restorationScopeId: 'guestShell',
        builder: (context, state, navigationShell) {
          return GuestShell(
            key: ValueKey('guestShell'),
            navigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _guestNewsNavigatorKey,
            routes: [
              GoRoute(
                path: '/guest-news',
                name: AppRoute.guestNews.name,
                builder: (context, state) => const GuestNewsScreen(),
                routes: [
                  GoRoute(
                    path: 'detail',
                    name: AppRoute.guestDetailNews.name,
                    builder: (context, state) => WpPostDetailScreen(
                      post: state.extra as WpPost,
                    ),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _guestPrayerNavigatorKey,
            routes: [
              GoRoute(
                path: '/guest-prayer',
                name: AppRoute.guestPrayer.name,
                builder: (context, state) => const GuestPrayerScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _guestUserNavigatorKey,
            routes: [
              GoRoute(
                path: '/guest-user',
                name: AppRoute.guestUser.name,
                builder: (context, state) => const GuestUserScreen(),
              ),
            ],
          ),
        ],
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            ScaffoldNestedNavigation(navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorAKey,
            routes: [
              GoRoute(
                path: '/',
                name: AppRoute.home.name,
                builder: (context, state) => const HomeScreen(),
                routes: [
                  GoRoute(
                    path: 'permit',
                    name: AppRoute.studentPermit.name,
                    builder: (context, state) => const PermitScreen(),
                    routes: [
                      GoRoute(
                        path: 'add',
                        name: AppRoute.addStudentPermit.name,
                        builder: (context, state) => const AddPermitScreen(),
                      ),
                      GoRoute(
                        path: 'detail',
                        name: AppRoute.detailStudentPermit.name,
                        builder: (context, state) => DetailPermitScreen(
                          permitId: state.extra as String,
                        ),
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'health',
                    name: AppRoute.studentHealth.name,
                    builder: (context, state) => const StudentHealthScreen(),
                    routes: [
                      GoRoute(
                        path: 'detail',
                        name: AppRoute.detailStudentHealth.name,
                        builder: (context, state) => DetailStudentHealthScreen(
                          studentHealthId: state.extra as String,
                        ),
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'student-card',
                    name: AppRoute.studentCard.name,
                    builder: (context, state) => const StudentCardScreen(),
                  ),
                  GoRoute(
                      path: 'violation',
                      name: AppRoute.studentViolation.name,
                      builder: (context, state) => const ViolationListScreen(),
                      routes: [
                        GoRoute(
                          path: 'detail',
                          name: AppRoute.detailViolation.name,
                          builder: (context, state) => DetailViolationScreen(
                            violationId: state.extra as String,
                          ),
                        ),
                      ]),
                  GoRoute(
                    path: 'mukholif-search',
                    name: AppRoute.mukholifSearch.name,
                    builder: (context, state) => const MukholifSearchScreen(),
                    routes: [
                      GoRoute(
                        path: 'detail',
                        name: AppRoute.mukholifDetail.name,
                        builder: (context, state) {
                          final extra = state.extra as Map<String, dynamic>;
                          return MukholifDetailScreen(
                            santrialId: extra['santri_id'] as int,
                            studentName: extra['nama'] as String,
                            kelas: extra['kelas'] as String?,
                            kamar: extra['kamar'] as String?,
                          );
                        },
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'subject',
                    name: AppRoute.subject.name,
                    builder: (context, state) => const SubjectScreen(),
                    routes: [
                      GoRoute(
                        path: 'student-score',
                        name: AppRoute.studentScore.name,
                        builder: (context, state) => StudentScoreScreen(
                          classId: state.uri.queryParameters['classId'],
                          subjectId: state.uri.queryParameters['subjectId'],
                          teacherName: state.uri.queryParameters['teacherName'],
                        ),
                        routes: [
                          GoRoute(
                            path: 'detail',
                            name: AppRoute.scoreDetail.name,
                            builder: (context, state) =>
                                StudentScoreDetailScreen(
                              score: state.extra as Nilai?,
                              teacherName:
                                  state.uri.queryParameters['teacherName'],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'school-activity',
                    name: AppRoute.schoolActivity.name,
                    builder: (context, state) => const SchoolActivityScreen(),
                  ),
                  GoRoute(
                    path: 'tahfidz-activity',
                    name: AppRoute.tahfidzActivity.name,
                    builder: (context, state) => const TahfidzActivityScreen(),
                  ),
                  GoRoute(
                    path: 'student-activity',
                    name: AppRoute.studentActivity.name,
                    builder: (context, state) => const StudentActivityScreen(),
                  ),
                  GoRoute(
                    path: 'holiday',
                    name: AppRoute.studentHoliday.name,
                    builder: (context, state) => const HolidayScreen(),
                    routes: [
                      GoRoute(
                        path: 'homecoming',
                        name: AppRoute.homecoming.name,
                        builder: (context, state) => StudentHomecomingScreen(
                          id: state.uri.queryParameters['id'],
                          name: state.uri.queryParameters['name'],
                        ),
                        routes: [
                          GoRoute(
                            path: 'registration',
                            name: AppRoute.registrationPickup.name,
                            builder: (context, state) =>
                                PickupRegistrationScreen(
                              eventId: state.uri.queryParameters['id'],
                            ),
                          ),
                          GoRoute(
                            path: 'qr-pickup',
                            name: AppRoute.qrPickup.name,
                            builder: (context, state) => QrPickupScreen(
                              pickupId: state.uri.queryParameters['id'],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'calendar-school',
                    name: AppRoute.calendarSchool.name,
                    builder: (context, state) => const CalendarSchoolScreen(),
                  ),
                  GoRoute(
                    path: 'finance-report',
                    name: AppRoute.financeReport.name,
                    builder: (context, state) => const FinanceReportScreen(),
                  ),
                  GoRoute(
                    path: 'analytics-dashboard',
                    name: AppRoute.analyticsDashboard.name,
                    builder: (context, state) => const AnalyticsDashboardScreen(),
                  ),
                  GoRoute(
                    path: 'donate',
                    name: AppRoute.donate.name,
                    builder: (context, state) => const DonateMosqueeScreen(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorBKey,
            routes: [
              GoRoute(
                path: '/news',
                name: AppRoute.news.name,
                builder: (context, state) => const GuestNewsScreen(),
                routes: [
                  GoRoute(
                    path: 'detail-news',
                    name: AppRoute.detailNews.name,
                    builder: (context, state) => WpPostDetailScreen(
                      post: state.extra as WpPost,
                    ),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorCKey,
            routes: [
              GoRoute(
                path: '/prayer',
                name: AppRoute.prayer.name,
                builder: (context, state) => const PrayerScreen(),
                routes: [
                  GoRoute(
                    path: 'time',
                    name: AppRoute.prayerTime.name,
                    builder: (context, state) => const PrayerTimeScreen(),
                  ),
                  GoRoute(
                    path: 'quran',
                    name: AppRoute.quran.name,
                    builder: (context, state) => const SurahScreen(),
                    routes: [
                      GoRoute(
                        path: 'ayah',
                        name: AppRoute.ayah.name,
                        builder: (context, state) => AyahScreen(
                          surah: state.extra as Surah,
                          jumpToAyahNumber: int.tryParse(
                            '${state.uri.queryParameters['jump_to_ayah_number']}',
                          ),
                        ),
                      ),
                    ],
                  ),
                  GoRoute(
                      path: 'books',
                      name: AppRoute.books.name,
                      builder: (context, state) => const BooksScreen(),
                      routes: [
                        GoRoute(
                          path: 'hadith',
                          name: AppRoute.hadith.name,
                          builder: (context, state) =>
                              HadithScreen(book: state.extra as Book),
                        ),
                      ]),
                  GoRoute(
                    path: 'qibla',
                    name: AppRoute.qibla.name,
                    builder: (context, state) => const QiblahCompassScreen(),
                    routes: [
                      GoRoute(
                        path: 'qibla-maps',
                        name: AppRoute.qiblaMaps.name,
                        builder: (context, state) => WebViewScreen(
                          title: state.uri.queryParameters['title'],
                          url: state.uri.queryParameters['url'],
                        ),
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'murottal',
                    name: AppRoute.murottal.name,
                    builder: (context, state) => const MurottalScreen(),
                  ),
                  GoRoute(
                    path: 'dhikr',
                    name: AppRoute.dhikr.name,
                    builder: (context, state) => DhikrScreen(
                      type: state.extra as DhikrType,
                    ),
                  ),
                  GoRoute(
                    path: 'pray',
                    name: AppRoute.pray.name,
                    builder: (context, state) => const PrayScreen(),
                  ),
                  GoRoute(
                    path: 'tv',
                    name: AppRoute.tv.name,
                    builder: (context, state) => const TvScreen(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorDKey,
            routes: [
              GoRoute(
                path: '/settings',
                name: AppRoute.setting.name,
                builder: (context, state) => const SettingScreen(),
                routes: [
                  GoRoute(
                    path: 'account',
                    name: AppRoute.account.name,
                    builder: (context, state) => const AccountScreen(),
                  ),
                  GoRoute(
                    path: 'change-password',
                    name: AppRoute.changePassword.name,
                    builder: (context, state) => const ChangePasswordScreen(),
                  ),
                  GoRoute(
                    path: 'privacy-policy',
                    name: AppRoute.privacyPolicy.name,
                    builder: (context, state) => WebViewScreen(
                      title: state.uri.queryParameters['title'],
                      url: state.uri.queryParameters['url'],
                    ),
                  ),
                  GoRoute(
                    path: 'agreement',
                    name: AppRoute.agreement.name,
                    builder: (context, state) => WebViewScreen(
                      title: state.uri.queryParameters['title'],
                      url: state.uri.queryParameters['url'],
                    ),
                  ),
                  GoRoute(
                    path: 'about-us',
                    name: AppRoute.aboutUs.name,
                    builder: (context, state) => WebViewScreen(
                      title: state.uri.queryParameters['title'],
                      url: state.uri.queryParameters['url'],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/login',
        name: AppRoute.login.name,
        builder: (context, state) => const LoginScreen(),
        routes: [
          GoRoute(
            path: 'forgot',
            name: AppRoute.forgot.name,
            builder: (context, state) => const ForgotScreen(),
          ),
          GoRoute(
            path: 'register',
            name: AppRoute.register.name,
            builder: (context, state) => const RegisterScreen(),
          ),
        ],
      ),
    ],
  );
}