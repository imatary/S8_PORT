.class Lcom/android/phone/CLIRDropDownPreference$2;
.super Ljava/lang/Object;
.source "CLIRDropDownPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CLIRDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CLIRDropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/CLIRDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CLIRDropDownPreference$2;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference$2;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v1}, Lcom/android/phone/CLIRDropDownPreference;->-get0(Lcom/android/phone/CLIRDropDownPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CLIRDropDownPreference$2;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v2}, Lcom/android/phone/CLIRDropDownPreference;->-get0(Lcom/android/phone/CLIRDropDownPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0256

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "not_support_ss_query"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isCellCSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoWIFI()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d02c9

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference$2;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v1}, Lcom/android/phone/CLIRDropDownPreference;->-get5(Lcom/android/phone/CLIRDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/CLIRDropDownPreference$2;->this$0:Lcom/android/phone/CLIRDropDownPreference;

    invoke-static {v1}, Lcom/android/phone/CLIRDropDownPreference;->-get5(Lcom/android/phone/CLIRDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->performClick()Z

    return v4
.end method
