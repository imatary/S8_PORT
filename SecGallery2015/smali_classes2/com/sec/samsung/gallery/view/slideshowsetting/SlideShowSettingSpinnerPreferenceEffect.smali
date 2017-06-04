.class public Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreferenceEffect;
.super Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;
.source "SlideShowSettingSpinnerPreferenceEffect.java"


# static fields
.field private static final EFFECT_SALOG_DETAILS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreferenceEffect;->EFFECT_SALOG_DETAILS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getEntry(I)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->getEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initAdapter()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreferenceEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreferenceEffect;->mArray:[Ljava/lang/String;

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->initAdapter()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreferenceEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreferenceEffect;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "7014"

    sget-object v2, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreferenceEffect;->EFFECT_SALOG_DETAILS:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->onNothingSelected(Landroid/widget/AdapterView;)V

    return-void
.end method

.method public bridge synthetic performClick()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->performClick()V

    return-void
.end method

.method public bridge synthetic setSelectedItem(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->setSelectedItem(I)V

    return-void
.end method
