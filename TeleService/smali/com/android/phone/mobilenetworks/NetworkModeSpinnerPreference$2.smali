.class Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$2;
.super Ljava/lang/Object;
.source "NetworkModeSpinnerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-get0(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreferenceClick: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-get1(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-get1(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0267

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-get1(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v0, v3}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-set0(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;Z)Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$2;->this$0:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->-get4(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->performClick()Z

    return v3
.end method
