.class public Lcom/sec/samsung/gallery/lib/factory/ConfigurationWrapper;
.super Ljava/lang/Object;
.source "ConfigurationWrapper.java"


# static fields
.field public static final MOBILE_KEYBOARD_COVERED_YES:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/sec/samsung/gallery/lib/factory/ConfigurationWrapper;->MOBILE_KEYBOARD_COVERED_YES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mobileKeyboardCovered(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/sec/samsung/gallery/lib/se/SeConfiguration;->mobileKeyboardCovered(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
