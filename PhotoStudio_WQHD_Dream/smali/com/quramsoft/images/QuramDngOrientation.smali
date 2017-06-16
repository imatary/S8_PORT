.class public Lcom/quramsoft/images/QuramDngOrientation;
.super Ljava/lang/Object;
.source "QuramDngOrientation.java"


# static fields
.field public static final eMirror:I = 0x4

.field public static final eMirror180:I = 0x6

.field public static final eMirror90CCW:I = 0x7

.field public static final eMirror90CW:I = 0x5

.field public static final eNormal:I = 0x0

.field public static final eRotate180:I = 0x2

.field public static final eRotate90CCW:I = 0x3

.field public static final eRotate90CW:I = 0x1

.field public static final eUnknown:I = 0x8


# instance fields
.field mAdobeOrientation:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quramsoft/images/QuramDngOrientation;->mAdobeOrientation:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/quramsoft/images/QuramDngOrientation;->mAdobeOrientation:J

    return-void
.end method


# virtual methods
.method public getOrientation()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngOrientation;->mAdobeOrientation:J

    return-wide v0
.end method
