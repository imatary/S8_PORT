.class public Lcom/sec/samsung/gallery/lib/se/SeSettingsSystem;
.super Ljava/lang/Object;
.source "SeSettingsSystem.java"


# static fields
.field public static final ACCESSIBILITY_MAGNIFIER:Ljava/lang/String; = "accessibility_magnifier"

.field public static final ASSISTANT_MENU:Ljava/lang/String; = "assistant_menu"

.field public static final EMERGENCY_MODE:Ljava/lang/String; = "emergency_mode"

.field public static final PHONE1_ON:Ljava/lang/String; = "phone1_on"

.field public static final PHONE2_ON:Ljava/lang/String; = "phone2_on"

.field public static final ULTRA_POWERSAVING_MODE:Ljava/lang/String; = "ultra_powersaving_mode"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method
