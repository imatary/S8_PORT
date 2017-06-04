.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/receiver/LocaleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocaleChangeReceiver.java"


# instance fields
.field presenceListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPresenceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/receiver/LocaleChangeReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/receiver/LocaleChangeReceiver$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/receiver/LocaleChangeReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/receiver/LocaleChangeReceiver;->presenceListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPresenceListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/Presence;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/Presence;-><init>()V

    const-string/jumbo v5, "lang"

    iput-object v5, v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/Presence;->id:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/Presence;->val:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/receiver/LocaleChangeReceiver;->presenceListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPresenceListener;

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->setPresence(Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPresenceListener;)V

    goto :goto_0
.end method
