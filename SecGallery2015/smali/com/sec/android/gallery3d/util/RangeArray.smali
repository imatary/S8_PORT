.class public Lcom/sec/android/gallery3d/util/RangeArray;
.super Ljava/lang/Object;
.source "RangeArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final mOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    iput p1, p0, Lcom/sec/android/gallery3d/util/RangeArray;->mOffset:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/sec/android/gallery3d/util/RangeArray;->mOffset:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/sec/android/gallery3d/util/RangeArray;->mOffset:I

    sub-int v1, p1, v1

    aput-object p2, v0, v1

    return-void
.end method
