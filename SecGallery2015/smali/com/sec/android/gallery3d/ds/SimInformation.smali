.class public Lcom/sec/android/gallery3d/ds/SimInformation;
.super Ljava/lang/Object;
.source "SimInformation.java"


# static fields
.field private static final SIM_STATE_DUAL_SIM:I = 0x2

.field private static final SIM_STATE_NO_SIM:I = 0x0

.field private static final SIM_STATE_SINGLE_SIM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimInformation"

.field private static sSimSlotCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x80000000

    sput v0, Lcom/sec/android/gallery3d/ds/SimInformation;->sSimSlotCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimState(Landroid/content/Context;)I
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/ds/SimInformation;->useMultiSIM()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v0, "ril.ICC_TYPE"

    const-string/jumbo v1, "ril.ICC_TYPE_1"

    const-string/jumbo v2, "0"

    const-string/jumbo v9, "ril.ICC_TYPE"

    invoke-static {v9}, Lcom/sec/samsung/gallery/lib/factory/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "ril.ICC_TYPE_1"

    invoke-static {v9}, Lcom/sec/samsung/gallery/lib/factory/SystemPropertiesWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/samsung/gallery/lib/factory/SettingsSystemWrapper;->PHONE1_ON:Ljava/lang/String;

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v3, v7

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/samsung/gallery/lib/factory/SettingsSystemWrapper;->PHONE2_ON:Ljava/lang/String;

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_2

    move v5, v7

    :goto_1
    const-string/jumbo v9, "0"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v3, :cond_3

    const-string/jumbo v9, "0"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v5, :cond_3

    const/4 v8, 0x2

    :cond_0
    :goto_2
    return v8

    :cond_1
    move v3, v8

    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_1

    :cond_3
    const-string/jumbo v9, "0"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "0"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_4
    move v8, v7

    goto :goto_2
.end method

.method public static useMultiSIM()Z
    .locals 4

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/gallery3d/ds/SimInformation;->sSimSlotCount:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {}, Lcom/sec/samsung/gallery/lib/factory/MultiSimManagerWrapper;->getSimSlotCount()I

    move-result v2

    sput v2, Lcom/sec/android/gallery3d/ds/SimInformation;->sSimSlotCount:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget v2, Lcom/sec/android/gallery3d/ds/SimInformation;->sSimSlotCount:I

    if-le v2, v1, :cond_1

    :goto_1
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SimInformation"

    const-string/jumbo v3, "NoClassDefFoundError : MultiSimManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
