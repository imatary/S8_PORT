.class abstract Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;
.super Landroid/preference/Preference;
.source "SlideShowSettingSpinnerPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideShowSettingSpinner"


# instance fields
.field mArray:[Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->initSpinner()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->initAdapter()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->initSpinner()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->initAdapter()V

    return-void
.end method

.method private initSpinner()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private updateSummary(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getEntry(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getSAScreenId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "708"

    return-object v0
.end method

.method initAdapter()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mArray:[Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mArray:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "SlideShowSettingSpinner"

    const-string/jumbo v2, "mArray cannot be null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->persistInt(I)Z

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->updateSummary(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public performClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->forceLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    goto :goto_0
.end method

.method public setSelectedItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    return-void
.end method
