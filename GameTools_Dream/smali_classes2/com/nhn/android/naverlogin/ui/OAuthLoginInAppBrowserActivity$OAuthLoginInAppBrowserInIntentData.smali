.class public Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$OAuthLoginInAppBrowserInIntentData;
.super Ljava/lang/Object;
.source "OAuthLoginInAppBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OAuthLoginInAppBrowserInIntentData"
.end annotation


# static fields
.field public static final INTENT_PARAM_KEY_AGREE_FORM_CONTENT:Ljava/lang/String; = "agreeFormContent"

.field public static final INTENT_PARAM_KEY_AGREE_FORM_URL:Ljava/lang/String; = "agreeFormUrl"

.field public static final INTENT_PARAM_KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field public static final INTENT_PARAM_KEY_CALLBACK_URL:Ljava/lang/String; = "ClientCallbackUrl"

.field public static final INTENT_PARAM_KEY_CLIENT_ID:Ljava/lang/String; = "ClientId"

.field public static final INTENT_PARAM_KEY_OAUTH_SDK_VERSION:Ljava/lang/String; = "oauth_sdk_version"

.field public static final INTENT_PARAM_KEY_STATE:Ljava/lang/String; = "state"


# instance fields
.field final synthetic this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity$OAuthLoginInAppBrowserInIntentData;->this$0:Lcom/nhn/android/naverlogin/ui/OAuthLoginInAppBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
