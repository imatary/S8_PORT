.class public Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;
.super Landroid/app/Activity;
.source "AboutPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Ljava/util/Observer;


# static fields
.field private static final FROM_HTML_MODE_LEGACY:I = 0x0

.field private static final KEY_CHECKING_STATUS:Ljava/lang/String; = "status"

.field private static final MSG_UPDATE_APK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AboutPageActivity"


# instance fields
.field private mAvailableText:Landroid/widget/TextView;

.field private mBadgeListener:Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;

.field private mCheckingStatus:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

.field private mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsMainAction:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mToast:Landroid/widget/Toast;

.field private mUpdateButton:Landroid/widget/Button;

.field private mVersionText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mIsMainAction:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mCheckingStatus:I

    new-instance v0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity$1;-><init>(Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mBadgeListener:Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity$2;-><init>(Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->checkForUpdatesCompleted(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mCheckingStatus:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->updateButtonCliked()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->makeSuccessNlgForUpdate(Z)V

    return-void
.end method

.method private checkForUpdatesCompleted(I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "AboutPageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkForUpdatesCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mCheckingStatus:I

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->checkingStatus(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mVersionText:Landroid/widget/TextView;

    const v1, 0x7f0a04b9

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mAvailableText:Landroid/widget/TextView;

    const v1, 0x7f0a04f2

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mAvailableText:Landroid/widget/TextView;

    const v1, 0x7f0a02d1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mAvailableText:Landroid/widget/TextView;

    const v1, 0x7f0a0477

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    const v1, 0x7f0a0377

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkForUpdatesNotCompleted()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->checkingStatus(Z)V

    return-void
.end method

.method private checkingStatus(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mAvailableText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sec/samsung/gallery/lib/factory/HtmlFactory;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/lib/factory/HtmlFactory;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/HtmlInterface;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Lcom/sec/samsung/gallery/lib/libinterface/HtmlInterface;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    return-object v3
.end method

.method private getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private handleUpdate()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private initActionBar()V
    .locals 12

    const/16 v11, 0x400

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mIsMainAction:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    const v6, 0x7f0a0024

    new-array v9, v7, [Ljava/lang/Object;

    const v10, 0x7f0a0051

    invoke-virtual {p0, v10}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-virtual {p0, v6, v9}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const v6, 0x7f020046

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :goto_2
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCondensedTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "action_bar_title"

    const-string/jumbo v8, "id"

    const-string/jumbo v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAllCaps(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v6, v8

    goto/16 :goto_0

    :cond_3
    iget-boolean v6, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mIsMainAction:Z

    if-eqz v6, :cond_0

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v11, v11}, Landroid/view/Window;->setFlags(II)V

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v6, "AboutPageActivity"

    const-string/jumbo v7, "Failed to obtain action bar title reference"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private initLinkButton(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    return-void
.end method

.method private initUpdateButton()V
    .locals 5

    const/4 v4, 0x1

    const v0, 0x7f120069

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f110000

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    return-void
.end method

.method private makeFailedNlgForUpdate()V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a083f

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    const-string/jumbo v1, "Update"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void
.end method

.method private makeSuccessNlgForPolicyAndLicense(I)V
    .locals 4

    const/4 v3, 0x0

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_PRIVACY_POLICY:I

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const v2, 0x7f0a0843

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string/jumbo v2, "PrivacyPolicy"

    :goto_2
    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v2, v3, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    const v2, 0x7f0a0844

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "OpenSourceLicenses"

    goto :goto_2
.end method

.method private makeSuccessNlgForUpdate(Z)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    const v1, 0x7f0a0840

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    const-string/jumbo v1, "Update"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0a0841

    goto :goto_0
.end method

.method private openSourceLinkButtonClicked()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/sec/android/gallery3d/settings/aboutpage/OpenSourceLicenseActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AboutPageActivity"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private privacyPolicyLinkButtonClicked()V
    .locals 5

    const-string/jumbo v2, "https://account.samsung.com/membership/pp"

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AboutPageActivity"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateButtonCliked()V
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mCheckingStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mUpdateButton:Landroid/widget/Button;

    const v2, 0x7f0a04a2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->checkForUpdatesNotCompleted()V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->makeFailedNlgForUpdate()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_1
    const v1, 0x7f0a02e0

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->jumpToSamsungApps(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->makeSuccessNlgForUpdate(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AboutGallery"

    return-object v0
.end method

.method public getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->updateButtonCliked()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->openSourceLinkButtonClicked()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->privacyPolicyLinkButtonClicked()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f120069
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "status"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mCheckingStatus:I

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->initActionBar()V

    const v0, 0x7f120066

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mVersionText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mVersionText:Landroid/widget/TextView;

    const v1, 0x7f0a04b9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f120067

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f120068

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mAvailableText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->initUpdateButton()V

    const v0, 0x7f12006b

    const v1, 0x7f0a0315

    invoke-direct {p0, v0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->initLinkButton(II)V

    const v0, 0x7f12006a

    const v1, 0x7f0a033e

    invoke-direct {p0, v0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->initLinkButton(II)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogAboutPageActivityListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AboutPageActivityDCHandler;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AboutPageActivityDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    :cond_1
    return-void
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v2, v2, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->setUiUpdateListener(Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;ZZLandroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mIsMainAction:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/util/ActionBarHelper;->setDefaultHomeAsUpActionBar(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mBadgeListener:Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v2, v2, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->setUiUpdateListener(Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;ZZLandroid/content/Context;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "status"

    iget v1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->mCheckingStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    const-string/jumbo v2, "AboutPageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Event update ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_UPDATE:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->handleUpdate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_PRIVACY_POLICY:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->privacyPolicyLinkButtonClicked()V

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->makeSuccessNlgForPolicyAndLicense(I)V

    goto :goto_0

    :cond_2
    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_OPEN_SOURCE_LICENSES:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->openSourceLinkButtonClicked()V

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->makeSuccessNlgForPolicyAndLicense(I)V

    goto :goto_0
.end method
