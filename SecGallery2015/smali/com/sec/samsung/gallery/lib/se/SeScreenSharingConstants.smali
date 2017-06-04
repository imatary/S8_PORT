.class public Lcom/sec/samsung/gallery/lib/se/SeScreenSharingConstants;
.super Ljava/lang/Object;
.source "SeScreenSharingConstants.java"


# static fields
.field public static final SUPPORT_ALL:I

.field public static final SUPPORT_MIRRORING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/lib/se/SeScreenSharingConstants;->SUPPORT_ALL:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/samsung/gallery/lib/se/SeScreenSharingConstants;->SUPPORT_MIRRORING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
