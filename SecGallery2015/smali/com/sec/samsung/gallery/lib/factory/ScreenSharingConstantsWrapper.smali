.class public Lcom/sec/samsung/gallery/lib/factory/ScreenSharingConstantsWrapper;
.super Ljava/lang/Object;
.source "ScreenSharingConstantsWrapper.java"


# static fields
.field public static final SUPPORT_ALL:I

.field public static final SUPPORT_MIRRORING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/lib/se/SeScreenSharingConstants;->SUPPORT_ALL:I

    sput v0, Lcom/sec/samsung/gallery/lib/factory/ScreenSharingConstantsWrapper;->SUPPORT_ALL:I

    sget v0, Lcom/sec/samsung/gallery/lib/se/SeScreenSharingConstants;->SUPPORT_MIRRORING:I

    sput v0, Lcom/sec/samsung/gallery/lib/factory/ScreenSharingConstantsWrapper;->SUPPORT_MIRRORING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
