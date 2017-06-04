.class public Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;
.super Ljava/lang/Object;
.source "MotionEventWrapper.java"


# static fields
.field public static final ACTION_PEN_DOWN:I

.field public static final ACTION_PEN_MOVE:I

.field public static final ACTION_PEN_UP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd3

    sput v0, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_DOWN:I

    const/16 v0, 0xd5

    sput v0, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_MOVE:I

    const/16 v0, 0xd4

    sput v0, Lcom/sec/samsung/gallery/lib/factory/MotionEventWrapper;->ACTION_PEN_UP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
