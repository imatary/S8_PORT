.class public Lcom/samsung/vip/engine/shape/ssConstant$PRIMITIVE_STATUS;
.super Ljava/lang/Object;
.source "ssConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vip/engine/shape/ssConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PRIMITIVE_STATUS"
.end annotation


# static fields
.field public static final PRI_DRAWING:I = 0x2

.field public static final PRI_END_SELECTED:I = 0x5

.field public static final PRI_JOIN_TO_LAST:I = 0x3

.field public static final PRI_NOT_SELECTED:I = 0x0

.field public static final PRI_SELECTED:I = 0x1

.field public static final PRI_START_SELECTED:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
