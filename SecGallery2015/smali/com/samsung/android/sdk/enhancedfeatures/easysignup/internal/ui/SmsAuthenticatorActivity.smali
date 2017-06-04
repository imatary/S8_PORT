.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;
.super Landroid/app/Activity;
.source "SmsAuthenticatorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private allCountries:[Ljava/lang/CharSequence;

.field private countryCode:[Ljava/lang/CharSequence;

.field private countryISO:[Ljava/lang/CharSequence;

.field private countryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private countryMap2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAuthMethods:[Ljava/lang/String;

.field private mAuthType:Ljava/lang/String;

.field private mButtonCancel:Landroid/widget/TextView;

.field private mButtonOK:Landroid/widget/TextView;

.field private mCccText:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCountryCodeIndex:I

.field private mCountryCodeLetter2:Ljava/lang/String;

.field private mCountryNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEditArea:Landroid/widget/EditText;

.field private mEditTextPhoneNumber:Landroid/widget/EditText;

.field private mEntryPoint:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mIsACSAvailable:Z

.field private mIsSMSAvailable:Z

.field private mMessenger:Landroid/os/Messenger;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRadioACS:Landroid/widget/RadioButton;

.field private mRadioACSLayout:Landroid/widget/LinearLayout;

.field private mRadioSMS:Landroid/widget/RadioButton;

.field private mRadioSMSLayout:Landroid/widget/LinearLayout;

.field private mSucceedSmsMt:Z

.field private mTimer:Landroid/os/CountDownTimer;

.field private mTopArea:Landroid/widget/TextView;

.field private mVerificationMethodSelector:Landroid/widget/LinearLayout;

.field private mtAuthHandler:Landroid/os/Handler;

.field private progressCloser:Ljava/lang/Runnable;

.field private reqAuthCodeHandler:Landroid/os/Handler;

.field smsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mMessenger:Landroid/os/Messenger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryMap2:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryNames:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mSucceedSmsMt:Z

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->progressCloser:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$6;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$7;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->reqAuthCodeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$8;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mtAuthHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->setOkButtonStatus()V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->showVerificationMethodSelector()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->authenticateMTDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->showErrorAlert()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->notifyMTAuthResult(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$902(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mSucceedSmsMt:Z

    return p1
.end method

.method private authenticateMTDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEntryPoint:Ljava/lang/String;

    const/16 v6, 0x50

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mtAuthHandler:Landroid/os/Handler;

    move-object v3, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    return-void
.end method

.method private getCountryCallingCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "[MT]getCountryCallingCode begin"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCccText = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryNames:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryCode:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getMCC(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/NumberUtils;->convertMCC2CountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ccc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "[MT]getCountryCallingCode end"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private hideStatusbarInLandscape()V
    .locals 4

    const/16 v3, 0x400

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private notifyMTAuthResult(Landroid/os/Message;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyMTAuthResult. message.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private requestAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestSmsAuth - phoneNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , ccc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->reqAuthCodeHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->in_progress:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->showProgress(Landroid/os/Handler;Ljava/lang/CharSequence;Z)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/NumberUtils;->getNationalNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDefaultLocale()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x29

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->reqAuthCodeHandler:Landroid/os/Handler;

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->reqAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    return-void
.end method

.method private setOkButtonStatus()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->bottom_button_enable_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->bottom_button_disable_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private showErrorAlert()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->information:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->check_your_connection:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->information:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->server_error_try_later:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showVerificationMethodSelector()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string/jumbo v1, "MM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected cancelTimer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method protected dismissProgress()V
    .locals 2

    const-string/jumbo v0, "dismissProgress"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->reqAuthCodeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->progressCloser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mtAuthHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->progressCloser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v6, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v6, "PARAMS_COUNTRY_NAME"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, ""

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryMap2:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryMap2:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryNames:Ljava/util/List;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeIndex:I

    const-string/jumbo v6, "country_name"

    invoke-static {v6, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[SelectCountry] NewCallingCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->setOkButtonStatus()V

    const-string/jumbo v6, "AR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "MX"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "BR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/16 v4, 0xa

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    new-instance v8, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;

    invoke-direct {v8, p0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EasySignupLengthFilter;-><init>(Landroid/content/Context;I)V

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x14

    goto :goto_1

    :pswitch_1
    if-ne p2, v6, :cond_4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v6, "acs_code"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mtAuthHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->please_wait:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->showProgress(Landroid/os/Handler;Ljava/lang/CharSequence;Z)V

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->authenticateMTDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x4

    if-ne p2, v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string/jumbo v7, "AR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string/jumbo v7, "MX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string/jumbo v7, "BR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditArea:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getCountryCallingCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->requestAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getCountryCallingCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->requestAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->radio_sms_layout:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mRadioSMS:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mRadioACS:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string/jumbo v2, "MM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "ACS"

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthType == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->radio_acs_layout:I

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mRadioSMS:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mRadioACS:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    const-string/jumbo v1, "ACS"

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAuthType == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->button_right:I

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "phone number empty"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v1, "SMS"

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string/jumbo v1, "SMS"

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string/jumbo v2, "AR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string/jumbo v2, "MX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    const-string/jumbo v2, "BR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditArea:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getCountryCallingCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->requestAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getCountryCallingCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->requestAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->button_left:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->finish()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->hideStatusbarInLandscape()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v16, "onCreate"

    sget-object v17, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->hideStatusbarInLandscape()V

    new-instance v10, Landroid/content/IntentFilter;

    const-string/jumbo v16, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v16, 0x7fffffff

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0x17

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSamsungDevice()Z

    move-result v16

    if-eqz v16, :cond_0

    sget-object v16, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/Constant;->SMS_PERMISSIONS_SAMSUNG_DEVICES:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "It doesn\'t have permissions..."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    sget-object v16, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/Constant;->SMS_PHONE_STATE_PERMISSIONS_NON_SAMSUNG_DEVICES:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "It doesn\'t have permissions..."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->verify_your_phone_number:I

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mContext:Landroid/content/Context;

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$layout;->layout_sms_authenticator:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v16, "extra_cb_handler"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/os/Messenger;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mMessenger:Landroid/os/Messenger;

    const-string/jumbo v16, "imsi"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    :cond_3
    const-string/jumbo v16, "AuthRequestFrom"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEntryPoint:Ljava/lang/String;

    const-string/jumbo v16, "extra_auth_methods"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    const-string/jumbo v16, "extra_auth_methods"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthMethods:[Ljava/lang/String;

    :cond_4
    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->topArea:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mTopArea:Landroid/widget/TextView;

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->localNo:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditArea:Landroid/widget/EditText;

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->phoneNo2:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->conutry_calling_code:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->radio_sms:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RadioButton;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mRadioSMS:Landroid/widget/RadioButton;

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->radio_acs:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RadioButton;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mRadioACS:Landroid/widget/RadioButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mRadioSMS:Landroid/widget/RadioButton;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/RadioButton;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mRadioACS:Landroid/widget/RadioButton;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/RadioButton;->setClickable(Z)V

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->radio_sms_layout:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mRadioSMSLayout:Landroid/widget/LinearLayout;

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->radio_acs_layout:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mRadioACSLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mRadioSMSLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mRadioACSLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->button_right:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->button_left:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mButtonCancel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    move-object/from16 v16, v0

    sget v17, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->verify:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    aget-object v5, v17, v16

    if-eqz v5, :cond_5

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mButtonCancel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    aget-object v5, v17, v16

    if-eqz v5, :cond_7

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mButtonOK:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mButtonCancel:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->choose_verification_method:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditArea:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const v17, 0x10000005

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getMCC(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/NumberUtils;->getCountryCodeLetter2FromMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mTopArea:Landroid/widget/TextView;

    move-object/from16 v16, v0

    sget v17, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->sms_authentification_activity_description:I

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthMethods:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthMethods:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthMethods:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    aget-object v3, v17, v16

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Authmethods : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "ACS"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z

    :cond_9
    const-string/jumbo v19, "SMS"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z

    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z

    move/from16 v16, v0

    if-nez v16, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string/jumbo v16, "SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "AR"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "MX"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "BR"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    :cond_d
    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->localNoLayout:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->phoneNo2Label:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditArea:Landroid/widget/EditText;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->requestFocus()Z

    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    move-object/from16 v16, v0

    new-instance v17, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->ef_country:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->allCountries:[Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->ef_country_code:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryCode:[Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/samsung/android/sdk/enhancedfeatures/R$array;->ef_ISO_country_code_Letter2:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryISO:[Ljava/lang/CharSequence;

    const/4 v7, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryCode:[Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryMap2:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryISO:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->allCountries:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v16, " (+"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->countryCode:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryNames:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mIsSMSAvailable:Z

    move/from16 v16, v0

    if-nez v16, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mIsACSAvailable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string/jumbo v16, "ACS"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "IN"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->we_recommend_using_a_voice_call:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->if_your_registered_for_dnd_service:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->guide_to_acs:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeLetter2:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "MM"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mVerificationMethodSelector:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string/jumbo v16, "ACS"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getMCC(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/NumberUtils;->getPositionMCC2CountryCode(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeIndex:I

    move/from16 v16, v0

    if-ltz v16, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryNames:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCountryCodeIndex:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->setOkButtonStatus()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v16, v0

    new-instance v17, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getSimMSISDN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getCountryCallingCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/NumberUtils;->getNationalNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mCccText:Landroid/widget/Button;

    move-object/from16 v16, v0

    sget v17, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->select_your_country:I

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setHint(I)V

    goto :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->requestFocus()Z

    const-string/jumbo v16, "input_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const-string/jumbo v1, "onDestroy"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mSucceedSmsMt:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x6c

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->notifyMTAuthResult(Landroid/os/Message;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->dismissProgress()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public runCountDown()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$5;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$5;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method protected showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->dismissProgress()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->ok:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected showProgress(Landroid/os/Handler;Ljava/lang/CharSequence;Z)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->progressCloser:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->progressCloser:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public validateActivity()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v3, "validateActivity. activity is not available now"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_3

    :goto_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
