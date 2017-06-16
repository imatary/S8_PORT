.class public Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;
.super Ljava/lang/Object;
.source "EditableStickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;,
        Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;,
        Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;,
        Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;
    }
.end annotation


# static fields
.field private static final ACCU_LOCATION_KEY_URL:Ljava/lang/String; = "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=zh"

.field private static final ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

.field private static final ACTION_SEC_AUTO_REFRESH:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

.field private static final ACTION_SEC_CHANGE_SETTING:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

.field private static final ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

.field private static final ACTION_WEATHER_DATE_SYNC:Ljava/lang/String; = "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

.field private static final CENTURY_ARRAY:[[D

.field private static final CHINESE_MONTH_NUMBER:[Ljava/lang/String;

.field private static final CHINESE_NUMBER:[Ljava/lang/String;

.field private static final CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

.field private static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "Accuweather"

.field private static final DECREASE_OFFSETMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FADING_EDGE_WIDTH_DIP:F = 20.0f

.field private static final INCREASE_OFFSETMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CURRENT_CITY:Ljava/lang/String; = "aw_daemon_service_key_loc_code"

.field private static final KEY_CURRENT_TEMP:Ljava/lang/String; = "aw_daemon_service_key_current_temp"

.field private static final KEY_ERROR_BUNDLE:Ljava/lang/String; = "Error_Code"

.field private static final KEY_HIGH_TEMP:Ljava/lang/String; = "aw_daemon_service_key_high_temp"

.field private static final KEY_ICON_NUM:Ljava/lang/String; = "aw_daemon_service_key_weather_icon_num"

.field private static final KEY_LOW_TEMP:Ljava/lang/String; = "aw_daemon_service_key_low_temp"

.field private static final KEY_TEMP_SCALE:Ljava/lang/String; = "aw_daemon_service_key_temp_scale"

.field private static final LUNAR_INFO:[J

.field private static final MY_WEATHER_INFO_URI:Landroid/net/Uri;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.ap.accuweather.provider"

.field private static final TAG:Ljava/lang/String; = "EditableStickerUtil"

.field private static final TERMS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final WEATHER_INFO_KEY_URL:Ljava/lang/String; = "https://api.weather.com/v2/aggcommon/v3-location-point;v3-wx-observations-current;v3-links?geocode=%s,%s&units=m&language=%s&format=json&par=samsung_widget&apiKey=45720848946ac3b87c8eeca0686a11ad"

.field private static element_bubble_0:Ljava/lang/String;

.field private static element_bubble_145:Ljava/lang/String;

.field private static element_bubble_2:Ljava/lang/String;

.field private static element_bubble_3:Ljava/lang/String;

.field private static element_dynamic_0:Ljava/lang/String;

.field private static element_dynamic_1_0:Ljava/lang/String;

.field private static element_dynamic_1_1:Ljava/lang/String;

.field private static element_dynamic_2:Ljava/lang/String;

.field private static element_dynamic_3:Ljava/lang/String;

.field private static element_form_0:Ljava/lang/String;

.field private static element_form_1:Ljava/lang/String;

.field private static element_form_2:Ljava/lang/String;

.field private static element_form_3:Ljava/lang/String;

.field private static languageCode:Ljava/lang/String;

.field private static mAltitude:Ljava/lang/String;

.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static mCity:Ljava/lang/String;

.field private static mCountry:Ljava/lang/String;

.field private static mCurrentDate:Ljava/lang/String;

.field private static mCurrentTime:Ljava/lang/String;

.field private static mCurrentYear:I

.field private static mDateAndTime:Ljava/lang/String;

.field private static mDay:I

.field private static mDist:Ljava/lang/String;

.field private static mHoliday:Ljava/lang/String;

.field private static mIsDistUpdated:Z

.field private static mIsLunarFestival:Z

.field private static mKaitiTypeface:Landroid/graphics/Typeface;

.field private static mLatitude:Ljava/lang/String;

.field private static mLeap:Z

.field private static mLongitude:Ljava/lang/String;

.field private static mLunarDate:Ljava/lang/String;

.field private static mLunarYear:Ljava/lang/String;

.field private static mMiaoTypeface:Landroid/graphics/Typeface;

.field private static mMonth:I

.field private static mPM25:Ljava/lang/String;

.field private static mProvince:Ljava/lang/String;

.field private static mShaonvTypeface:Landroid/graphics/Typeface;

.field private static mSolarTerm:Ljava/lang/String;

.field private static mSportDefault:Ljava/lang/String;

.field private static mTemperature:Ljava/lang/String;

.field private static mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

.field private static mWeatherString:Ljava/lang/String;

.field private static mWeekday:Ljava/lang/String;

.field private static mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4e00"

    aput-object v1, v0, v5

    const-string v1, "\u4e8c"

    aput-object v1, v0, v4

    const-string v1, "\u4e09"

    aput-object v1, v0, v6

    const-string v1, "\u56db"

    aput-object v1, v0, v3

    const-string v1, "\u4e94"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6b63"

    aput-object v1, v0, v5

    const-string v1, "\u4e8c"

    aput-object v1, v0, v4

    const-string v1, "\u4e09"

    aput-object v1, v0, v6

    const-string v1, "\u56db"

    aput-object v1, v0, v3

    const-string v1, "\u4e94"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->CHINESE_MONTH_NUMBER:[Ljava/lang/String;

    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->LUNAR_INFO:[J

    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->MY_WEATHER_INFO_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->DECREASE_OFFSETMAP:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    const-string v0, "COL_WEATHER_KEY=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "cityId:current"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    new-array v0, v6, [[D

    const/16 v1, 0x18

    new-array v1, v1, [D

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    const/16 v1, 0x18

    new-array v1, v1, [D

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->CENTURY_ARRAY:[[D

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    const-string v0, "16"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mTemperature:Ljava/lang/String;

    const-string v0, "\u6674"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherString:Ljava/lang/String;

    const-string v0, "\u5317\u4eac"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCity:Ljava/lang/String;

    const-string v0, "\u4e2d\u56fd"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCountry:Ljava/lang/String;

    const-string v0, "\u671d\u9633\u533a"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDist:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mProvince:Ljava/lang/String;

    const-string v0, "230"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mPM25:Ljava/lang/String;

    const-string v0, "31"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mAltitude:Ljava/lang/String;

    const-string v0, "39.9042"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLatitude:Ljava/lang/String;

    const-string v0, "116.4074"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLongitude:Ljava/lang/String;

    const-string v0, "zh"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->languageCode:Ljava/lang/String;

    const/16 v0, 0x7e1

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentYear:I

    const-string v0, "18:00"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentTime:Ljava/lang/String;

    const-string v0, "4 - 20"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentDate:Ljava/lang/String;

    const-string v0, "\u661f\u671f\u4e00"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeekday:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLunarDate:Ljava/lang/String;

    const-string v0, "\u5e73\u65e5"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mSolarTerm:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mHoliday:Ljava/lang/String;

    const-string v0, "2016.4.20 23:20"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDateAndTime:Ljava/lang/String;

    const-string v0, "\u4e19\u7533"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLunarYear:Ljava/lang/String;

    const/16 v0, 0x7e0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mYear:I

    sput v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mMonth:I

    sput v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDay:I

    const-string v0, "\u8650\u817f\u65e5"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mSportDefault:Ljava/lang/String;

    const-string v0, "123456"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_dynamic_0:Ljava/lang/String;

    const-string v0, "\u516b\u6708\u521d\u4e03"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_dynamic_1_0:Ljava/lang/String;

    const-string v0, "\u4e19\u7533\u5e74"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_dynamic_1_1:Ljava/lang/String;

    const-string v0, "\u4e09\u91cc\u5c6f\u25aa\u5317\u4eac"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_dynamic_2:Ljava/lang/String;

    const-string v0, "2016/08/08"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_dynamic_3:Ljava/lang/String;

    const-string v0, "\u6211\u5148\u6323\u4ed6\u4e00\u4e2a\u4ebf\uff01"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_form_2:Ljava/lang/String;

    const-string v0, "\u4eca\u5929\u5730\u94c1\u4eba\u5f88\u5c11"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_form_3:Ljava/lang/String;

    const-string v0, "\u597d"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_form_1:Ljava/lang/String;

    const-string v0, "\u5f88  \u597d"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_form_0:Ljava/lang/String;

    const-string v0, "\u5148\u6323\u4e00\u4e2a\u4ebf"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_bubble_145:Ljava/lang/String;

    const-string v0, "\u5148\u8d5a\u4e00\u4e2a\u4ebf"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_bubble_0:Ljava/lang/String;

    const-string v0, "\u665a\u4e0a\u5403\u5565\uff1f"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_bubble_2:Ljava/lang/String;

    const-string v0, "\u665a\u4e0a\u5403\u5565\uff1f"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_bubble_3:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$1;

    invoke-direct {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$1;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sput-boolean v5, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mIsDistUpdated:Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->DECREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->YUSHUI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->CHUNFEN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x824

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->XIAOMAN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->MANGZHONG:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x76e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->XIAZHI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x788

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->XIAOSHU:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    const/16 v3, 0x785

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x7e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->DASHU:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x782

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->LIQIU:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->BAILU:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x787

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->QIUFEN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x796

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->SHUANGJIANG:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x829

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->LIDONG:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x829

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->XIAOXUE:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7ba

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->DAXUE:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7a2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->DECREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->DONGZHI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    const/16 v3, 0x77e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x7e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->XIAOHAN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7be

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->DECREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->XIAOHAN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x7e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->DAHAN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Integer;

    const/16 v3, 0x822

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data

    :array_1
    .array-data 8
        0x4012849ba5e353f8L    # 4.6295
        0x403375bc01a36e2fL    # 19.4599
        0x401987c84b5dcc64L    # 6.3826
        0x40356a5e353f7ceeL    # 21.4155
        0x40165c28f5c28f5cL    # 5.59
        0x4034e353f7ced917L    # 20.888
        0x401945a1cac08312L    # 6.318
        0x4035dc28f5c28f5cL    # 21.86
        0x401a000000000000L    # 6.5
        0x4036333333333333L    # 22.2
        0x401fb645a1cac083L    # 7.928
        0x4037a66666666666L    # 23.65
        0x4020b33333333333L    # 8.35
        0x4037f33333333333L    # 23.95
        0x4020e147ae147ae1L    # 8.44
        0x4037d26e978d4fdfL    # 23.822
        0x4022322d0e560419L    # 9.098
        0x403837ced916872bL    # 24.218
        0x40206f9db22d0e56L    # 8.218
        0x4037147ae147ae14L    # 23.08
        0x401f99999999999aL    # 7.9
        0x403699999999999aL    # 22.6
        0x401870a3d70a3d71L    # 6.11
        0x4034d70a3d70a3d7L    # 20.84
    .end array-data

    :array_2
    .array-data 8
        0x400ef5c28f5c28f6L    # 3.87
        0x4032bae147ae147bL    # 18.73
        0x4016851eb851eb85L    # 5.63
        0x4034a5604189374cL    # 20.646
        0x40133d70a3d70a3dL    # 4.81
        0x403419999999999aL    # 20.1
        0x4016147ae147ae14L    # 5.52
        0x40350a3d70a3d70aL    # 21.04
        0x4016b645a1cac083L    # 5.678
        0x40355eb851eb851fL    # 21.37
        0x401c6e978d4fdf3bL    # 7.108
        0x4036d47ae147ae14L    # 22.83
        0x401e000000000000L    # 7.5
        0x40372147ae147ae1L    # 23.13
        0x401e95810624dd2fL    # 7.646
        0x40370ac083126e98L    # 23.042
        0x4020a2d0e5604189L    # 8.318
        0x40377020c49ba5e3L    # 23.438
        0x401dc083126e978dL    # 7.438
        0x40365c28f5c28f5cL    # 22.36
        0x401cb851eb851eb8L    # 7.18
        0x4035f0a3d70a3d71L    # 21.94
        0x40159f3b645a1cacL    # 5.4055
        0x40341eb851eb851fL    # 20.12
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCountry:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mTemperature:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mTemperature:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mProvince:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mProvince:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mIsDistUpdated:Z

    return p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDist:Ljava/lang/String;

    return-object p0
.end method

.method private static convertLunar(Ljava/util/Calendar;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    new-instance v0, Ljava/util/Date;

    const-wide v8, -0x201b9524740L

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    long-to-int v6, v8

    const/4 v2, 0x0

    const/16 v4, 0x76c

    :goto_0
    const/16 v7, 0x802

    if-ge v4, v7, :cond_0

    if-lez v6, :cond_0

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->yearDays(I)I

    move-result v2

    sub-int/2addr v6, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-gez v6, :cond_1

    add-int/2addr v6, v2

    add-int/lit8 v4, v4, -0x1

    :cond_1
    sput v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mYear:I

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->leapMonth(I)I

    move-result v5

    sput-boolean v12, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLeap:Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_1
    const/16 v7, 0xd

    if-ge v3, v7, :cond_4

    if-lez v6, :cond_4

    if-lez v5, :cond_3

    add-int/lit8 v7, v5, 0x1

    if-ne v3, v7, :cond_3

    sget-boolean v7, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLeap:Z

    if-nez v7, :cond_3

    add-int/lit8 v3, v3, -0x1

    sput-boolean v13, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLeap:Z

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mYear:I

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->leapDays(I)I

    move-result v1

    :goto_2
    sub-int/2addr v6, v1

    sget-boolean v7, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLeap:Z

    if-eqz v7, :cond_2

    add-int/lit8 v7, v5, 0x1

    if-ne v3, v7, :cond_2

    sput-boolean v12, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLeap:Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mYear:I

    invoke-static {v7, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->monthDays(II)I

    move-result v1

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    if-lez v5, :cond_5

    add-int/lit8 v7, v5, 0x1

    if-ne v3, v7, :cond_5

    sget-boolean v7, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLeap:Z

    if-eqz v7, :cond_7

    sput-boolean v12, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLeap:Z

    :cond_5
    :goto_3
    if-gez v6, :cond_6

    add-int/2addr v6, v1

    add-int/lit8 v3, v3, -0x1

    :cond_6
    sput v3, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mMonth:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDay:I

    return-void

    :cond_7
    sput-boolean v13, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLeap:Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_3
.end method

.method private static final cyclical()Ljava/lang/String;
    .locals 2

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mYear:I

    add-int/lit16 v1, v1, -0x76c

    add-int/lit8 v0, v1, 0x24

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->cyclicalm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final cyclicalm(I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v2, 0xa

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "\u7532"

    aput-object v2, v0, v4

    const-string v2, "\u4e59"

    aput-object v2, v0, v5

    const-string v2, "\u4e19"

    aput-object v2, v0, v6

    const-string v2, "\u4e01"

    aput-object v2, v0, v7

    const-string v2, "\u620a"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "\u5df1"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "\u5e9a"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "\u8f9b"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "\u58ec"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "\u7678"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\u5b50"

    aput-object v2, v1, v4

    const-string v2, "\u4e11"

    aput-object v2, v1, v5

    const-string v2, "\u5bc5"

    aput-object v2, v1, v6

    const-string v2, "\u536f"

    aput-object v2, v1, v7

    const-string v2, "\u8fb0"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u5df3"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u5348"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u672a"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u7533"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u9149"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u620c"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u4ea5"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v3, p0, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v3, p0, 0xc

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static doubleEquals(DD)Z
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static drawFradedTextUsingAlpha(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 7

    const/16 v0, 0x32

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getCurrentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p4, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v5, 0xff

    const/16 v6, 0xf

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->drawIncrementalAlpha(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    return-void
.end method

.method private static drawIncrementalAlpha(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 12

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getCurrentString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    new-array v6, v7, [F

    invoke-virtual {p2, v4, v6}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move/from16 v0, p5

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getLeft()I

    move-result v7

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getTop()I

    move-result v8

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getLeft()I

    move-result v9

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getTop()I

    move-result v10

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_0

    sub-int v7, v2, p6

    if-le v5, v7, :cond_1

    :cond_0
    return-void

    :cond_1
    int-to-float v7, v5

    aget v8, v6, v3

    add-float/2addr v7, v8

    float-to-int v5, v7

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getCurrentString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getTop()I

    move-result v9

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v8, v9, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static drawMultilineFadedText(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getLeft()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getTop()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getHeight()I

    move-result v2

    int-to-float v8, v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getCurrentString()Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->drawTextInMultipleLines(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getFontColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getFontColor()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getFontColor()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getWidth()I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getFontColor()I

    move-result v6

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getHeight()I

    move-result v5

    invoke-direct {v10, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getCurrentString()Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    iput v2, v12, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v12, Landroid/graphics/RectF;->bottom:F

    iget v2, v12, Landroid/graphics/RectF;->left:F

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v12, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v12, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v12, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    iget v3, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getTop()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private static drawTextCentered(Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getCurrentString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    iput v3, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p2, v2, v3, v4, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawTextInMultipleLines(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFLjava/lang/String;)V
    .locals 16

    move-object/from16 v15, p8

    const-string v13, ""

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float v14, v3, v5

    add-float v10, p5, v14

    add-float v9, p5, p7

    const/4 v12, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    :cond_0
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move/from16 v7, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v12

    const/4 v3, 0x0

    invoke-virtual {v15, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v13, v1, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v10, v14

    cmpl-float v3, v10, v9

    if-lez v3, :cond_1

    sub-float v3, v10, v14

    move-object/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v13, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_1
    if-lt v12, v11, :cond_0

    goto :goto_0
.end method

.method private static getChinaDayString(I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u521d"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u5341"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u5eff"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u5345"

    aput-object v3, v0, v2

    rem-int/lit8 v2, p0, 0xa

    if-nez v2, :cond_0

    const/16 v1, 0x9

    :goto_0
    const/16 v2, 0x1e

    if-le p0, v2, :cond_1

    const-string v2, ""

    :goto_1
    return-object v2

    :cond_0
    rem-int/lit8 v2, p0, 0xa

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    if-ne p0, v2, :cond_2

    const-string v2, "\u521d\u5341"

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p0, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getChinaDistrictAndCity()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCity:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDist:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mIsDistUpdated:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u25aa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_dynamic_2:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getChinaNumString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v4, 0xa

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v6

    const-string v4, "\u4e00"

    aput-object v4, v1, v7

    const-string v4, "\u4e8c"

    aput-object v4, v1, v8

    const-string v4, "\u4e09"

    aput-object v4, v1, v9

    const-string v4, "\u56db"

    aput-object v4, v1, v10

    const/4 v4, 0x5

    const-string v5, "\u4e94"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "\u516d"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "\u4e03"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "\u516b"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "\u4e5d"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v6

    const-string v4, "\u5341"

    aput-object v4, v3, v7

    const-string v4, "\u5eff"

    aput-object v4, v3, v8

    const-string v4, "\u4e09\u5341"

    aput-object v4, v3, v9

    const-string v4, "\u56db\u5341"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "\u4e94\u5341"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "\u516d\u5341"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "\u4e03\u5341"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "\u516b\u5341"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "\u4e5d\u5341"

    aput-object v5, v3, v4

    const-string v2, ""

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v0, v4

    if-gez v0, :cond_0

    const-string v2, "\u8d1f"

    neg-int v0, v0

    :cond_0
    const/16 v4, 0x14

    if-ne v0, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4e8c\u5341"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const/16 v4, 0x63

    if-le v0, v4, :cond_2

    const-string v4, "\u5341\u516d"

    :goto_0
    return-object v4

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v5, v0, 0xa

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    rem-int/lit8 v5, v0, 0xa

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_0
.end method

.method private static getChineseEveDate(I)Ljava/lang/String;
    .locals 4

    add-int/lit8 v2, p0, -0x1

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->monthDays(II)I

    move-result v0

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_0

    const-string v1, "\u5341\u4e8c\u6708\u4e09\u5341"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\u5341\u4e8c\u6708\u5eff\u4e5d"

    goto :goto_0
.end method

.method public static getChnDate()Ljava/lang/String;
    .locals 4

    const-string v0, "%s\u6708%s\u65e5"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MM"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getChinaNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dd"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getChinaNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChnTemperature()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mTemperature:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getChinaNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6444\u6c0f\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCity()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 4

    const-string v0, "%s\u6708%s\u65e5"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MM"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dd"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentDate:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentDate:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentDayOfWeek()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/text/DateFormatSymbols;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentYear()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormat01()Ljava/lang/String;
    .locals 5

    const-string v0, "%s  \u661f \u671f %c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeekday:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeekday:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDateAndTime:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDateAndTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getDateFormat02()Ljava/lang/String;
    .locals 4

    const-string v0, "%s - %s ,  %s\u2103"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MM"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dd"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mTemperature:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDateAndTime:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDateAndTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getDateFormat03()Ljava/lang/String;
    .locals 4

    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTemperature()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDateAndTime:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDateAndTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getDateFormat04()Ljava/lang/String;
    .locals 4

    const-string v0, "%s/%s/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "yyyy"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "MM"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "dd"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDateAndTime:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDateAndTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDateforFestival()Ljava/lang/String;
    .locals 4

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mIsLunarFestival:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getLunarDate()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s\u6708%s\u65e5"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MM"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "dd"

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$6;->$SwitchMap$com$sec$android$mimage$photoretouching$lpe$util$EditableStickerUtil$TextType:[I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "NONE"

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getCurrentYear()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "yyyy.MM.dd"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "yyyy.MM.dd.kk:mm"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateFormat01()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateFormat02()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateFormat03()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateFormat04()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getHoliday()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTerm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getLunarYear()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getCurrentDayOfWeek()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getLocationString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getLocationString01()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getLocationString02()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getGpsInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getPM25()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getChnDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_12
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateforFestival()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_13
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getChnTemperature()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_14
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_15
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mSportDefault:Ljava/lang/String;

    goto :goto_0

    :pswitch_16
    const-string v0, "125"

    goto :goto_0

    :pswitch_17
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSeasonAndTemperature()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_18
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getChinaDistrictAndCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_19
    const-string v0, "\u5c0f\u96ea \u548c \u6e29\u5ea6"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method private static getDpValue(Landroid/content/Context;F)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p1

    float-to-int v1, v1

    return v1
.end method

.method private static getFestival(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mSolarTerm:Ljava/lang/String;

    const-string v1, "\u6e05\u660e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6e05\u660e\u8282"

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "01.01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "02.14"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "03.08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "03.12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "05.01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "05.04"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "06.01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "07.01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "08.01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "09.10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v1, "10.01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v1, "12.25"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "\u5143\u65e6"

    goto :goto_1

    :pswitch_1
    const-string v0, "\u60c5\u4eba\u8282"

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "\u5987\u5973\u8282"

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "\u690d\u6811\u8282"

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "\u52b3\u52a8\u8282"

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "\u9752\u5e74\u8282"

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "\u513f\u7ae5\u8282"

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "\u5efa\u515a\u8282"

    goto/16 :goto_1

    :pswitch_8
    const-string v0, "\u5efa\u519b\u8282"

    goto/16 :goto_1

    :pswitch_9
    const-string v0, "\u6559\u5e08\u8282"

    goto/16 :goto_1

    :pswitch_a
    const-string v0, "\u56fd\u5e86\u8282"

    goto/16 :goto_1

    :pswitch_b
    const-string v0, "\u5723\u8bde\u8282"

    goto/16 :goto_1

    :cond_1
    const-string v0, "unknown"

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2bb610e -> :sswitch_0
        0x2bbd58f -> :sswitch_1
        0x2bc49d3 -> :sswitch_2
        0x2bc49ec -> :sswitch_3
        0x2bd328a -> :sswitch_4
        0x2bd328d -> :sswitch_5
        0x2bda6e9 -> :sswitch_6
        0x2be1b48 -> :sswitch_7
        0x2be8fa7 -> :sswitch_8
        0x2bf0424 -> :sswitch_9
        0x2c90430 -> :sswitch_a
        0x2c9ed30 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getGpsInfo()Ljava/lang/String;
    .locals 4

    const-string v0, "%s  %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getLongitude()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getLatitude()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHansRegular()Landroid/graphics/Typeface;
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v0

    :try_start_0
    const-string v1, "/system/fonts/SECHans-Regular.otf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getHoliday()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getLunarDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getLunarFestival(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mHoliday:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mHoliday:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MM.dd"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getFestival(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mHoliday:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mHoliday:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5e73\u5e38\u65e5"

    :goto_0
    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mHoliday:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mHoliday:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mHoliday:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getKaitiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 4

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mKaitiTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.monotype.android.font.kaiti"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fonts/Kaiti.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mKaitiTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mKaitiTypeface:Landroid/graphics/Typeface;

    return-object v2

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mKaitiTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static getLatitude()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLatitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e1c\u7ecf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u897f\u7ecf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ecf\u5ea6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getLocationInfo(Ljava/lang/String;Lcom/android/volley/RequestQueue;)V
    .locals 4

    const-string v1, "EditableStickerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocationInfo url ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$4;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$4;-><init>()V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$5;

    invoke-direct {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$5;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "location_json_request"

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public static getLocationString()Ljava/lang/String;
    .locals 5

    const-string v1, "%s,  %s,  %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCountry:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCity:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDist:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocationString01()Ljava/lang/String;
    .locals 5

    const-string v1, "%s\u5e02,  %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCity:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDist:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocationString02()Ljava/lang/String;
    .locals 5

    const-string v1, "%s  /  %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCountry:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCity:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLongitude()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLongitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5317\u7eac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5357\u7eac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7eac\u5ea6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLunarDate()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->CHINESE_MONTH_NUMBER:[Ljava/lang/String;

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708\u00b7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDay:I

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLunarFestival(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mIsLunarFestival:Z

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentYear:I

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getChineseEveDate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u9664\u5915"

    :goto_1
    return-object v0

    :sswitch_0
    const-string v2, "\u6b63\u6708 \u521d\u4e00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "\u6b63\u6708 \u521d\u4e8c"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v2, "\u6b63\u6708 \u521d\u4e09"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "\u6b63\u6708 \u5341\u4e94"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "\u4e94\u6708 \u521d\u4e94"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "\u516b\u6708 \u5341\u4e94"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "\u4e5d\u6708 \u521d\u4e5d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "\u4e03\u6708 \u521d\u4e03"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "\u4e03\u6708 \u5341\u56db"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "\u5341\u4e8c\u6708 \u521d\u516b"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :pswitch_0
    const-string v0, "\u6625\u8282"

    goto :goto_1

    :pswitch_1
    const-string v0, "\u5143\u5bb5\u8282"

    goto :goto_1

    :pswitch_2
    const-string v0, "\u7aef\u5348\u8282"

    goto :goto_1

    :pswitch_3
    const-string v0, "\u4e2d\u79cb\u8282"

    goto :goto_1

    :pswitch_4
    const-string v0, "\u91cd\u9633\u8282"

    goto :goto_1

    :pswitch_5
    const-string v0, "\u4e03\u5915\u8282"

    goto :goto_1

    :pswitch_6
    const-string v0, "\u4e2d\u5143\u8282"

    goto :goto_1

    :pswitch_7
    const-string v0, "\u814a\u516b\u8282"

    goto :goto_1

    :cond_1
    sput-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mIsLunarFestival:Z

    const-string v0, "unknown"

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7dd0873d -> :sswitch_4
        -0x6d1ab30f -> :sswitch_9
        -0x55cba48a -> :sswitch_5
        0x1826957e -> :sswitch_0
        0x18269587 -> :sswitch_2
        0x1826960a -> :sswitch_1
        0x1826b96e -> :sswitch_3
        0x7a342821 -> :sswitch_7
        0x7a345455 -> :sswitch_8
        0x7f286bd5 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getLunarYear()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLunarYear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiaoTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 4

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mMiaoTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.monotype.android.font.miao"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fonts/Miao.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mMiaoTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mMiaoTypeface:Landroid/graphics/Typeface;

    return-object v2

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mMiaoTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static getOffset(Ljava/util/Map;ILjava/lang/String;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    move v1, p3

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getPM25()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PM2.5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mPM25:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRobotoBlack()Landroid/graphics/Typeface;
    .locals 3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    :try_start_0
    const-string v2, "/system/fonts/Roboto-Black.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRobotoLightBOLDFont()Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "sec-roboto-light"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getRobotoLightFont()Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "sec-roboto-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getRobotoMedium()Landroid/graphics/Typeface;
    .locals 3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    :try_start_0
    const-string v2, "/system/fonts/Roboto-Medium.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRobotoRegular()Landroid/graphics/Typeface;
    .locals 2

    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getSeasonAndTemperature()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mTemperature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6444\u6c0f\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShaonvTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 4

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mShaonvTypeface:Landroid/graphics/Typeface;

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.monotype.android.font.shaonv"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fonts/Shaonv.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mShaonvTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mShaonvTypeface:Landroid/graphics/Typeface;

    return-object v2

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mShaonvTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static getSolarTerm()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mSolarTerm:Ljava/lang/String;

    return-object v0
.end method

.method private static getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;
    .locals 12

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->valueOf(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->ordinal()I

    move-result v5

    const/4 v0, -0x1

    const/16 v7, 0x76d

    if-lt p0, v7, :cond_4

    const/16 v7, 0x7d0

    if-gt p0, v7, :cond_4

    const/4 v0, 0x0

    :goto_0
    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->CENTURY_ARRAY:[[D

    aget-object v7, v7, v0

    aget-wide v2, v7, v5

    const/4 v1, 0x0

    rem-int/lit8 v6, p0, 0x64

    rem-int/lit8 v7, p0, 0x4

    if-nez v7, :cond_0

    rem-int/lit8 v7, p0, 0x64

    if-nez v7, :cond_1

    :cond_0
    rem-int/lit16 v7, p0, 0x190

    if-nez v7, :cond_3

    :cond_1
    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->XIAOHAN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->ordinal()I

    move-result v7

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->DAHAN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->ordinal()I

    move-result v7

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->LICHUN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->ordinal()I

    move-result v7

    if-eq v5, v7, :cond_2

    sget-object v7, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->YUSHUI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_3

    :cond_2
    add-int/lit8 v6, v6, -0x1

    :cond_3
    int-to-double v8, v6

    const-wide v10, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    double-to-int v7, v8

    div-int/lit8 v8, v6, 0x4

    sub-int v1, v7, v8

    invoke-static {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSpecialYearOffset(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v1, v7

    const/16 v7, 0xa

    if-ge v1, v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_4
    const/16 v7, 0x7d1

    if-lt p0, v7, :cond_5

    const/16 v7, 0x834

    if-gt p0, v7, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not support this year \uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uff0conly range from 1901 ~ 2100"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private static getSpecialYearOffset(ILjava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->DECREASE_OFFSETMAP:Ljava/util/Map;

    const/4 v2, -0x1

    invoke-static {v1, p0, p1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getOffset(Ljava/util/Map;ILjava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->INCREASE_OFFSETMAP:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v1, p0, p1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getOffset(Ljava/util/Map;ILjava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;",
            ">;"
        }
    .end annotation

    const/16 v51, 0x0

    const v2, 0x7f0c00ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v19

    const v2, 0x7f0c00ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v10

    const v2, 0x7f0c0052

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v28

    const v2, 0x7f0c0053

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v37

    const v2, 0x7f0c0054

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v46

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v51

    :pswitch_1
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_1

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v3, 0x423a0000    # 46.5f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42ee0000    # 119.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x42960000    # 75.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->PM25:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v9

    const/high16 v11, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v11

    const/4 v12, 0x0

    sget-object v13, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->HANS_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v13

    const/4 v14, 0x1

    invoke-direct/range {v2 .. v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v3, 0x423a0000    # 46.5f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x43060000    # 134.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x42960000    # 75.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-object v9, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->CURRENT_DATE:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v9

    const/high16 v11, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v11

    const/4 v12, 0x0

    sget-object v13, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->KAITI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v13

    const/4 v14, 0x1

    invoke-direct/range {v2 .. v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x429e0000    # 79.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x41b80000    # 23.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x42d00000    # 104.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->CITY_NAME:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->HANS_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x428e0000    # 71.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x434b0000    # 203.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->LOCATION_STRING:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->KAITI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x7

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x42380000    # 46.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x42e60000    # 115.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x42880000    # 68.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x41500000    # 13.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->WEATHER_COLD:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->HANS_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x8

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x42940000    # 74.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x434f0000    # 207.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x41980000    # 19.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->SEASON_AND_TEMPERATURE:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->KAITI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_2
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_4

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->TIME_01:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41840000    # 16.5f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->SHAONV:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x43450000    # 197.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x429a0000    # 77.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->HOLIDAY:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x42880000    # 68.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->KAITI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x42a60000    # 83.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x43570000    # 215.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->DATE_FOR_FESTIVAL:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41880000    # 17.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->KAITI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x429c0000    # 78.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x433a0000    # 186.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->DAY_OF_WEEK:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_BLACK:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x42fe0000    # 127.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x433a0000    # 186.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->CURRENT_DAY:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_MEDIUM:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x42740000    # 61.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x42040000    # 33.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x43020000    # 130.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->SOLAR_TERM:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x42500000    # 52.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->KAITI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x2

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x42f20000    # 121.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x42040000    # 33.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x41980000    # 19.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->LUNAR_YEAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->KAITI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x3

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x6

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x41580000    # 13.5f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x42de0000    # 111.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x432e0000    # 174.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x41980000    # 19.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->CURRENT_DAY_AND_TIME:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41880000    # 17.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->MIAO:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x8

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x42920000    # 73.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x43420000    # 194.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->DATE_FORMAT_01:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->MIAO:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_3
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_9

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x42ea0000    # 117.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x42e20000    # 113.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->LOCATION_STRING_01:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->MIAO:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x423c0000    # 47.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x43400000    # 192.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->LOCATION_STRING_02:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->KAITI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_b

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x42d40000    # 106.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x42ce0000    # 103.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->LOCATION_STRING_01:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->HANS_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x7

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x42180000    # 38.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x42d20000    # 105.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x423c0000    # 47.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->CITY_NAME:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->KAITI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x5

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x43180000    # 152.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x430d0000    # 141.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->LOCATION_STRING:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->SHAONV:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x422c0000    # 43.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x42c00000    # 96.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x42100000    # 36.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->SPORT_01:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v18

    const/high16 v2, 0x42000000    # 32.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->MIAO:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_c

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x434c0000    # 204.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x42c80000    # 100.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_form_0:Ljava/lang/String;

    const/high16 v2, 0x42940000    # 74.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_d

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x42d00000    # 104.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x42d00000    # 104.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_form_1:Ljava/lang/String;

    const/high16 v2, 0x42940000    # 74.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_e

    new-instance v20, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v21

    const/high16 v2, 0x40d00000    # 6.5f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v22

    const/high16 v2, 0x43400000    # 192.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v23

    const/high16 v2, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    sget-object v27, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_form_2:Ljava/lang/String;

    const/high16 v2, 0x41980000    # 19.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v29

    const/16 v30, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v31

    const/16 v32, 0x1

    invoke-direct/range {v20 .. v32}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    new-instance v29, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v30

    const/high16 v2, 0x41300000    # 11.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v31

    const/high16 v2, 0x43520000    # 210.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v32

    const/high16 v2, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v33

    const/16 v34, 0x1

    const/16 v35, 0x0

    sget-object v36, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_form_3:Ljava/lang/String;

    const/high16 v2, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v38

    const/16 v39, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v40

    const/16 v41, 0x1

    invoke-direct/range {v29 .. v41}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_7
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_f

    new-instance v29, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x42aa0000    # 85.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v30

    const/high16 v2, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v31

    const/high16 v2, 0x43700000    # 240.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v32

    const/high16 v2, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v33

    const/16 v34, 0x1

    const/16 v35, 0x0

    sget-object v36, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_dynamic_0:Ljava/lang/String;

    const/high16 v2, 0x42880000    # 68.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v38

    const/16 v39, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v40

    const/16 v41, 0x1

    invoke-direct/range {v29 .. v41}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_10

    new-instance v29, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v30

    const/high16 v2, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v31

    const/high16 v2, 0x41980000    # 19.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v32

    const/high16 v2, 0x42f00000    # 120.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v33

    const/16 v34, 0x1

    const/16 v35, 0x1

    sget-object v36, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_dynamic_1_0:Ljava/lang/String;

    const/high16 v2, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v38

    const/16 v39, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v40

    const/16 v41, 0x4

    invoke-direct/range {v29 .. v41}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v29, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x42080000    # 34.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v30

    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v31

    const/high16 v2, 0x41880000    # 17.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v32

    const/high16 v2, 0x42840000    # 66.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v33

    const/16 v34, 0x1

    const/16 v35, 0x1

    sget-object v36, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_dynamic_1_1:Ljava/lang/String;

    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v38

    const/16 v39, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v40

    const/16 v41, 0x3

    invoke-direct/range {v29 .. v41}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_11

    new-instance v29, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v30

    const/high16 v2, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v31

    const/high16 v2, 0x43100000    # 144.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v32

    const/high16 v2, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v33

    const/16 v34, 0x1

    const/16 v35, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->DISTRICT_AND_CITY:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v36

    const/high16 v2, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v38

    const/16 v39, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v40

    const/16 v41, 0x1

    invoke-direct/range {v29 .. v41}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    new-instance v29, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v30

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v31

    const/high16 v2, 0x43bd0000    # 378.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v32

    const/high16 v2, 0x42c00000    # 96.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v33

    const/16 v34, 0x1

    const/16 v35, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;->DATE_FORMAT_04:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDefaultText(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextType;)Ljava/lang/String;

    move-result-object v36

    const/high16 v2, 0x41d80000    # 27.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v38

    const/16 v39, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v40

    const/16 v41, 0x1

    invoke-direct/range {v29 .. v41}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_8
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_12

    new-instance v38, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v39

    const/high16 v2, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v40

    const/high16 v2, 0x431b0000    # 155.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v41

    const/high16 v2, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v42

    const/16 v43, 0x1

    const/16 v44, 0x0

    sget-object v45, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_bubble_2:Ljava/lang/String;

    const/high16 v2, 0x42000000    # 32.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v47

    const/high16 v2, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v48

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->MIAO:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v49

    const/16 v50, 0x2

    invoke-direct/range {v38 .. v50}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_13

    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x42500000    # 52.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x43420000    # 194.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x42980000    # 76.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_bubble_3:Ljava/lang/String;

    const/high16 v2, 0x421c0000    # 39.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/high16 v2, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v21

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->MIAO:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x2

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    if-nez p2, :cond_14

    new-instance v38, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v39

    const/high16 v2, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v40

    const/high16 v2, 0x43740000    # 244.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v41

    const/high16 v2, 0x42580000    # 54.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v42

    const/16 v43, 0x1

    const/16 v44, 0x0

    sget-object v45, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_bubble_0:Ljava/lang/String;

    const/high16 v2, 0x424c0000    # 51.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v47

    const/16 v48, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v49

    const/16 v50, 0x1

    invoke-direct/range {v38 .. v50}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_15

    new-instance v38, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v39

    const/high16 v2, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v40

    const/high16 v2, 0x43740000    # 244.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v41

    const/high16 v2, 0x42580000    # 54.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v42

    const/16 v43, 0x1

    const/16 v44, 0x0

    sget-object v45, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_bubble_145:Ljava/lang/String;

    const/high16 v2, 0x424c0000    # 51.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v47

    const/16 v48, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v49

    const/16 v50, 0x1

    invoke-direct/range {v38 .. v50}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_16

    const/4 v2, 0x5

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    :cond_16
    new-instance v11, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;

    const/high16 v2, 0x41c00000    # 24.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v12

    const/high16 v2, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v13

    const/high16 v2, 0x43740000    # 244.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v14

    const/high16 v2, 0x42580000    # 54.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->element_bubble_145:Ljava/lang/String;

    const/high16 v2, 0x424c0000    # 51.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDpValue(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ROBOTO_REGULAR:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-direct/range {v11 .. v23}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;-><init>(IIIIZZLjava/lang/String;IIILandroid/graphics/Typeface;I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private static getString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->cyclical()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLeap:Z

    if-eqz v0, :cond_0

    const-string v0, "\u95f0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->CHINESE_MONTH_NUMBER:[Ljava/lang/String;

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDay:I

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getTemperature()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mTemperature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6444\u6c0f\u5ea6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTerms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "\u5e73\u65e5"

    :cond_0
    return-object v0
.end method

.method private static getTermsMap(I)V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "01-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->XIAOHAN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c0f\u5bd2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "01-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->DAHAN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5927\u5bd2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "02-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->LICHUN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7acb\u6625"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "02-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->YUSHUI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u96e8\u6c34"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "03-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->JINGZHE:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u60ca\u86f0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "03-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->CHUNFEN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6625\u5206"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "04-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->QINGMING:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6e05\u660e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "04-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->GUYU:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8c37\u96e8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "05-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->LIXIA:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7acb\u590f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "05-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->XIAOMAN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c0f\u6ee1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "06-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->MANGZHONG:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8292\u79cd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "06-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->XIAZHI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u590f\u81f3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "07-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->XIAOSHU:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c0f\u6691"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "07-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->DASHU:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5927\u6691"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "08-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->LIQIU:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7acb\u79cb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "08-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->CHUSHU:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5904\u6691"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "09-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->BAILU:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u767d\u9732"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "09-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->QIUFEN:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u79cb\u5206"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->HANLU:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5bd2\u9732"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->SHUANGJIANG:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u971c\u964d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "11-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->LIDONG:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7acb\u51ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "11-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->XIAOXUE:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5c0f\u96ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "12-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->DAXUE:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5927\u96ea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->TERMS_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "12-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->DONGZHI:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$SolarTermsEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getSolarTermNum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u51ac\u81f3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getTextFont(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;)Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$6;->$SwitchMap$com$sec$android$mimage$photoretouching$lpe$util$EditableStickerUtil$TextFont:[I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$TextFont;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getRobotoBlack()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getHansRegular()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getShaonvTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getKaitiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getMiaoTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getWeather()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherString:Ljava/lang/String;

    return-object v0
.end method

.method private static getWeatherInfoFromServer(Ljava/lang/String;Lcom/android/volley/RequestQueue;)V
    .locals 4

    const-string v1, "EditableStickerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWeatherInfoFromServer url ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$2;

    invoke-direct {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$2;-><init>()V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$3;

    invoke-direct {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$3;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "location_json_request"

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public static getWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x6

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->strToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\u661f\u671f\u65e5"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "\u661f\u671f\u4e00"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "\u661f\u671f\u4e8c"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "\u661f\u671f\u4e09"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "\u661f\u671f\u56db"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "\u661f\u671f\u4e94"

    aput-object v5, v3, v4

    const-string v4, "\u661f\u671f\u516d"

    aput-object v4, v3, v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    if-ltz v2, :cond_0

    if-le v2, v6, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    aget-object v4, v3, v2

    return-object v4
.end method

.method public static getWeekday()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeekday:Ljava/lang/String;

    return-object v0
.end method

.method private static handleUpdateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    const-string v1, "aw_daemon_service_key_weather_icon_num"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->setIconNumber(I)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    const-string v1, "aw_daemon_service_key_current_temp"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->setCurrentTemperature(F)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    const-string v1, "aw_daemon_service_key_temp_scale"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->setTempScale(I)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    const-string v1, "aw_daemon_service_key_loc_code"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->setCurrentCityId(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    const-string v1, "aw_daemon_service_key_high_temp"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->setHighTemperature(F)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    const-string v1, "aw_daemon_service_key_low_temp"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->setLowTemperature(F)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    const-string v1, "Error_Code"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->setTrusted(I)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->dump()V

    return-void
.end method

.method public static initLocation(Landroid/location/Location;Lcom/android/volley/RequestQueue;)V
    .locals 5

    const-string v1, "EditableStickerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mQueue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLatitude:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLongitude:Ljava/lang/String;

    const-string v1, "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=zh"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLatitude:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLongitude:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getLocationInfo(Ljava/lang/String;Lcom/android/volley/RequestQueue;)V

    :cond_0
    return-void
.end method

.method public static initTime()V
    .locals 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "HH:mm"

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentTime:Ljava/lang/String;

    const-string v4, "yyyy-MM-dd"

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentDate:Ljava/lang/String;

    const-string v4, "yyyy"

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentYear:I

    const-string v4, "MM-dd"

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentDate:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeekday:Ljava/lang/String;

    sget v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentYear:I

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTermsMap(I)V

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getTerms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mSolarTerm:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    :try_start_0
    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCurrentDate:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->convertLunar(Ljava/util/Calendar;)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLunarDate:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->cyclical()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLunarYear:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static initWeather(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    invoke-direct {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    :cond_0
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->registerWeatherInfoReceiver(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->updateWeatherInfo(Landroid/content/Context;)V

    return-void
.end method

.method public static initWeather(Landroid/location/Location;Lcom/android/volley/RequestQueue;)V
    .locals 5

    const-string v1, "~Rakesh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentLocation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mQueue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLatitude:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLongitude:Ljava/lang/String;

    :cond_0
    const-string v1, "https://api.weather.com/v2/aggcommon/v3-location-point;v3-wx-observations-current;v3-links?geocode=%s,%s&units=m&language=%s&format=json&par=samsung_widget&apiKey=45720848946ac3b87c8eeca0686a11ad"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLatitude:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mLongitude:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->languageCode:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getWeatherInfoFromServer(Ljava/lang/String;Lcom/android/volley/RequestQueue;)V

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static final leapDays(I)I
    .locals 4

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->LUNAR_INFO:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final leapMonth(I)I
    .locals 4

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->LUNAR_INFO:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static final monthDays(II)I
    .locals 4

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->LUNAR_INFO:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private static registerWeatherInfoReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->requestWeatherDataSync(Landroid/content/Context;)V

    return-void
.end method

.method private static requestWeatherDataSync(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PACKAGE"

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CP"

    const-string v2, "Accuweather"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static saveBitmapFile(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v6

    :catch_0
    move-exception v1

    const-string v7, "EditableStickerUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    const/4 v6, 0x1

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "EditableStickerUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v2

    :goto_2
    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v7, "EditableStickerUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_4
    throw v6

    :catch_4
    move-exception v1

    const-string v7, "EditableStickerUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v4, v5

    goto :goto_2
.end method

.method public static setDefaultStrings()V
    .locals 1

    const-string v0, "\u5317\u4eac"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mCity:Ljava/lang/String;

    const-string v0, "\u671d\u9633\u533a"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mDist:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mIsDistUpdated:Z

    return-void
.end method

.method private static strToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static unregisterWeatherInfoReceiver(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static updateStickerWithText(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getFontColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getfontSizeSingleLine()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getCurrentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p0, p1, v1, p2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->drawMultilineFadedText(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {p1, v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->drawTextCentered(Lcom/sec/android/mimage/photoretouching/lpe/util/EditTextInfo;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private static updateWeatherInfo(Landroid/content/Context;)V
    .locals 9

    const/16 v8, 0x63

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->MY_WEATHER_INFO_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->CITYID_CURRENT_LOCATION_SEC:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "COL_WEATHER_CONVERTED_ICON_NUM"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherInfo:Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->getWeatherString(I)I
    invoke-static {v2, v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil$WeatherInfo;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mWeatherString:Ljava/lang/String;

    const-string v1, "COL_WEATHER_AQI_INDEX"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mPM25:Ljava/lang/String;

    const-string v1, "COL_WEATHER_CURRENT_TEMP"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->mTemperature:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private static final yearDays(I)I
    .locals 6

    const/16 v1, 0x15c

    const v0, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    sget-object v2, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->LUNAR_INFO:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method
