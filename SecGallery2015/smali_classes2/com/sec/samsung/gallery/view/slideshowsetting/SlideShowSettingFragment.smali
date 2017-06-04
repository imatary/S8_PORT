.class public Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "SlideShowSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DEFAULT_EFFECT:I = 0x0

.field private static final DEFAULT_SPEED:I = 0x1

.field private static final KEY_EFFECT:Ljava/lang/String; = "key_slideshow_effect"

.field private static final KEY_SPEED:Ljava/lang/String; = "key_slideshow_speed"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffectPreference:Landroid/preference/Preference;

.field private mSpeedPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static getSavedEffect(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "key_slideshow_effect"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getSavedSpeed(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "key_slideshow_speed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSavedSpeedTimeMSec(Landroid/content/Context;)I
    .locals 2

    const/16 v0, 0xbb8

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->getSavedSpeed(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x3e8

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x1388

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mEffectPreference:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->getSavedEffect(Landroid/content/Context;)I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mEffectPreference:Landroid/preference/Preference;

    check-cast v4, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->getEntry(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mEffectPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mEffectPreference:Landroid/preference/Preference;

    check-cast v4, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->setSelectedItem(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mSpeedPreference:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->getSavedSpeed(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mSpeedPreference:Landroid/preference/Preference;

    check-cast v4, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->getEntry(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mSpeedPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mSpeedPreference:Landroid/preference/Preference;

    check-cast v4, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->setSelectedItem(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "key_slideshow_effect"

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mEffectPreference:Landroid/preference/Preference;

    const-string/jumbo v0, "key_slideshow_speed"

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->mSpeedPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;->init()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingSpinnerPreference;->performClick()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
