.class public Lcom/sec/samsung/gallery/util/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAirViewFeedback(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->AIR_VIEW_MODE:Ljava/lang/String;

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getFingerAirView(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->FINGER_AIR_VIEW_SOUND_AND_HAPTIC_FEEDBACK:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    if-nez v0, :cond_3

    const-string/jumbo v2, "spen_feedback_sound"

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "spen_feedback_sound_air_view"

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    if-ne v0, v6, :cond_7

    move-object v2, p0

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getToolType()I

    move-result v1

    if-ne v1, v6, :cond_5

    const-string/jumbo v2, "spen_feedback_sound"

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "spen_feedback_sound_air_view"

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    if-ne v1, v3, :cond_6

    sget-object v2, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->FINGER_AIR_VIEW_SOUND_AND_HAPTIC_FEEDBACK:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_6
    move v2, v4

    goto :goto_0

    :cond_7
    sget-object v2, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->FINGER_AIR_VIEW_SOUND_AND_HAPTIC_FEEDBACK:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private static getBool(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getFingerAirView(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->FINGER_AIR_VIEW:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getFingerAirViewInformationPreview(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->FINGER_AIR_VIEW_INFORMATION_PREVIEW:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getModeAirViewSoundAndHaptic(Landroid/content/Context;)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getAirViewFeedback(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string/jumbo v2, "spen_feedback_haptic"

    invoke-static {p0, v2}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsSupportHaptic:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMouseHovering(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->MOUSE_HOVERING:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getMouseHoveringInformationPreview(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->MOUSE_HOVERING_INFORMATION_PREVIEW:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getPenHovering(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/lib/factory/HoverConstant;->PEN_HOVERING:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getPersonalModeAutoDisalbeWhenScreenoff(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "personal_mode_auto_disable_when_screen_off"

    invoke-static {p0, v0}, Lcom/sec/samsung/gallery/util/SettingsUtil;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
