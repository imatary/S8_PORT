.class public Lcom/samsung/android/spen/libse/SeSettingsSystem;
.super Ljava/lang/Object;
.source "SeSettingsSystem.java"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/SettingsSystemInterface;


# static fields
.field public static final PEN_HOVERING:Ljava/lang/String; = "pen_hovering"

.field public static final PEN_HOVERING_INFORMATION_PREVIEW:Ljava/lang/String; = "pen_hovering_information_preview"

.field public static final USER_OWNER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move v1, p3

    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    return v1

    :catch_0
    move-exception v0

    :goto_0
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
