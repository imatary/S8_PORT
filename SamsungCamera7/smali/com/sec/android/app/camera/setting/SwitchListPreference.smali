.class public Lcom/sec/android/app/camera/setting/SwitchListPreference;
.super Landroid/preference/Preference;
.source "SwitchListPreference.java"


# instance fields
.field private mIsChecked:Z

.field private mSummaryDescription:Ljava/lang/String;

.field private mSwitch:Landroid/widget/Switch;

.field private mTitleDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/SwitchListPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/SwitchListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0f0014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mIsChecked:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/sec/android/app/camera/setting/SwitchListPreference$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/setting/SwitchListPreference$1;-><init>(Lcom/sec/android/app/camera/setting/SwitchListPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mTitleDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mTitleDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mSummaryDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mSummaryDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mIsChecked:Z

    return-void
.end method

.method public setSummaryDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mSummaryDescription:Ljava/lang/String;

    return-void
.end method

.method public setTitleDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SwitchListPreference;->mTitleDescription:Ljava/lang/String;

    return-void
.end method
