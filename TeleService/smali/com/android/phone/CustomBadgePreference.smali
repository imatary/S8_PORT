.class public Lcom/android/phone/CustomBadgePreference;
.super Landroid/preference/Preference;
.source "CustomBadgePreference.java"


# instance fields
.field private mBadgeImg:Landroid/view/View;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/android/phone/CustomBadgePreference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/android/phone/CustomBadgePreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f1000a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CustomBadgePreference;->mBadgeImg:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/CustomBadgePreference;->mBadgeImg:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/CustomBadgePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/CheckForUpdates;->getBadgeState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateBadge()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/CustomBadgePreference;->mBadgeImg:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/CustomBadgePreference;->mBadgeImg:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/CustomBadgePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/CheckForUpdates;->getBadgeState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
