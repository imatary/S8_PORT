.class public Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;
.super Landroid/preference/Preference;
.source "ProcessStatsPreference.java"


# instance fields
.field private mProgress:I

.field private mProgressMAX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0400a5

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;->mProgressMAX:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget v1, p0, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setPercent(DJ)V
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;->mProgress:I

    long-to-int v0, p3

    iput v0, p0, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;->mProgressMAX:I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;->notifyChanged()V

    return-void
.end method
