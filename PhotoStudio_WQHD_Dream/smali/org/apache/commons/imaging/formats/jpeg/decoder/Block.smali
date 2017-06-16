.class final Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;
.super Ljava/lang/Object;
.source "Block.java"


# instance fields
.field final height:I

.field final samples:[I

.field final width:I


# direct methods
.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    iput p2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->height:I

    return-void
.end method
