.class public Lcom/nhn/android/naverlogin/OAuthLoginDefine;
.super Ljava/lang/Object;
.source "OAuthLoginDefine.java"


# static fields
.field public static final ACTION_OAUTH_LOGIN:Ljava/lang/String; = "com.nhn.android.search.action.OAUTH2_LOGIN"

.field public static final ACTION_OAUTH_LOGIN_2NDAPP:Ljava/lang/String; = "com.naver.android.action.OAUTH2_LOGIN"

.field public static DEVELOPER_VERSION:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "NaverLoginOAuth|"

.field public static MARKET_LINK_WORKING:Z = false

.field public static final NAVER_PACKAGE_NAME:Ljava/lang/String; = "com.nhn.android.search"

.field public static TIMEOUT:I = 0x0

.field public static final VERSION:Ljava/lang/String; = "4.1.4.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->MARKET_LINK_WORKING:Z

    const/16 v0, 0x2710

    sput v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->TIMEOUT:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nhn/android/naverlogin/OAuthLoginDefine;->DEVELOPER_VERSION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
