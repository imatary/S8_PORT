.class public Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;
.super Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;
.source "SettingAboutGameTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/game/gamecast/common/stub/StubListener;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private isGetResultStub:Z

.field private mAppInfo:Landroid/widget/Button;

.field private mCurrentOrientation:I

.field private mCurrentVersion:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mOpenSourceLicense:Landroid/widget/TextView;

.field private mOpenSourceLicenseClickable:Z

.field private mPrivacyPolicy:Landroid/widget/TextView;

.field private mPrivacyPolicyClickable:Z

.field private mProgress:Landroid/widget/ProgressBar;

.field private mTermsAndConditions:Landroid/widget/TextView;

.field private mTermsAndConditionsClickable:Z

.field private mTitleName:Landroid/widget/TextView;

.field private mUpdateButton:Landroid/widget/Button;

.field private mUpdateInfoText:Landroid/widget/TextView;

.field private mUpdateMgr:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientation:I

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditionsClickable:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicenseClickable:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicyClickable:Z

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->isGetResultStub:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateMgr:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditionsClickable:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicyClickable:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicenseClickable:Z

    return p1
.end method

.method private getUpdateMgr()Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateMgr:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;-><init>(Landroid/content/Context;Lcom/sec/game/gamecast/common/stub/StubListener;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateMgr:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateMgr:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    return-object v0
.end method

.method private goAppInfo()V
    .locals 6

    const-string/jumbo v1, "com.samsung.android.game.gametools"

    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "goAppInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initialize()V
    .locals 7

    const v6, 0x7f060129

    const/16 v5, 0x8

    const/4 v2, 0x0

    const v4, 0x7f060466

    const/4 v3, 0x1

    iget v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientation:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    const v1, 0x7f0c0193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    const v1, 0x7f0c0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v1, 0x7f0c0195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v1, 0x7f0c0196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTitleName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTitleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f060065

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/stub/StubUtil;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/sec/game/gamecast/common/stub/StubUtil;->checkUpdate(Lcom/sec/game/gamecast/common/stub/StubListener;Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v1, 0x7f0c019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v1, 0x7f0c019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateInfoText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v1, 0x7f0c019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mProgress:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->setUpdateButton()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v1, 0x7f0c0199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentVersion:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->getNowVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v1, 0x7f0c019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditions:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditions:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f06012b

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditions:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f06012b

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditions:Landroid/widget/TextView;

    invoke-static {v0, v1, v3}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToTextColorPrimary(Landroid/content/Context;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v1, 0x7f0c019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicy:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicy:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f06012a

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicy:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f06012a

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicy:Landroid/widget/TextView;

    invoke-static {v0, v1, v3}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToTextColorPrimary(Landroid/content/Context;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v1, 0x7f0c01a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicense:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicense:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicense:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicense:Landroid/widget/TextView;

    invoke-static {v0, v1, v3}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorToTextColorPrimary(Landroid/content/Context;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    const v1, 0x7f0c0197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mAppInfo:Landroid/widget/Button;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    const v1, 0x7f0c0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    const v1, 0x7f0c0193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setUpdateButton()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUpdateButton: isGetResultStub - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->isGetResultStub:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUpdateButton: isNetworkAvailable - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getUpdateMgr()Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->isNetworkAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->isGetResultStub:Z

    if-eqz v4, :cond_5

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/model/SettingData;->getToolsStubServerVersion(Landroid/content/Context;)I

    move-result v3

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sVer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mVer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateInfoText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getUpdateMgr()Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->isNetworkAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    if-le v3, v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    const v5, 0x7f060149

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateInfoText:Landroid/widget/TextView;

    const v5, 0x7f060145

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PackageManager.NameNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateInfoText:Landroid/widget/TextView;

    const v5, 0x7f060146

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    const v5, 0x7f060148

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateInfoText:Landroid/widget/TextView;

    const v5, 0x7f060126

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateInfoText:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method bindListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditions:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicense:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicy:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mAppInfo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const-wide/16 v6, 0x12c

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->saveCurrentFocus(Landroid/view/View;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditionsClickable:Z

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mTermsAndConditionsClickable:Z

    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$1;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_2
    iget-boolean v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicyClickable:Z

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mPrivacyPolicyClickable:Z

    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$2;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_3
    iget-boolean v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicenseClickable:Z

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicenseClickable:Z

    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$3;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onClick: btn_update is click!"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v3, "com.samsung.android.game.gametools"

    invoke-static {v3}, Lcom/sec/game/gamecast/common/stub/StubUtil;->makeDeepLinkIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v3, "903"

    const-string/jumbo v4, "9031"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClick: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->goAppInfo()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0197
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientationRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->saveCurrentFocus(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->initialize()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->bindListener()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->loadPrevFocus()Z

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mCurrentOrientation:I

    const v0, 0x7f030070

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->initialize()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->bindListener()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->setMaxFontScale()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDownloadApkFail()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDownloadApkFail: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadApkSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDownloadApkSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetDownloadUrlFail(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onGetDownloadUrlFail: stubData is null!"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetDownloadUrlSuccess(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onGetDownloadUrlSuccess: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNoMatchingApplication(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onNoMatchingApplication: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->isGetResultStub:Z

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getUpdateMgr()Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->setNetworkAvailable(Z)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->setUpdateButton()V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060327

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f060065

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "903"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->loadPrevFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mOpenSourceLicense:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onUpdateAvailable(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdateAvailable: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->isGetResultStub:Z

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getUpdateMgr()Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->setNetworkAvailable(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/game/gamecast/common/stub/StubData;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setToolsStubServerVersion(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->setUpdateButton()V

    goto :goto_0
.end method

.method public onUpdateCheckFail(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdateCheckFail: stubData is null!"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->isGetResultStub:Z

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getUpdateMgr()Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->setNetworkAvailable(Z)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->setUpdateButton()V

    return-void
.end method

.method public onUpdateNotNecessary(Lcom/sec/game/gamecast/common/stub/StubData;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdateNotNecessary: "

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->isGetResultStub:Z

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getUpdateMgr()Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->setNetworkAvailable(Z)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->setUpdateButton()V

    return-void
.end method

.method public setMaxFontScale()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMaxFontScale"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->mRootView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->setMaxFontScaleToLargeRecursive(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
