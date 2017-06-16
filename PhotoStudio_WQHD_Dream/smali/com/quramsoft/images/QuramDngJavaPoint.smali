.class public Lcom/quramsoft/images/QuramDngJavaPoint;
.super Ljava/lang/Object;
.source "QuramDngJavaPoint.java"


# instance fields
.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/quramsoft/images/QuramDngJavaPoint;->x:I

    iput v0, p0, Lcom/quramsoft/images/QuramDngJavaPoint;->y:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/quramsoft/images/QuramDngJavaPoint;->x:I

    iput p2, p0, Lcom/quramsoft/images/QuramDngJavaPoint;->y:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QuramDngJavaPoint;->y:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QuramDngJavaPoint;->x:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QuramDngJavaPoint;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QuramDngJavaPoint;->y:I

    return v0
.end method
