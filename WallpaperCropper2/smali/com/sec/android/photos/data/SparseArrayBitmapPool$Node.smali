.class public Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
.super Ljava/lang/Object;
.source "SparseArrayBitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/photos/data/SparseArrayBitmapPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Node"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

.field nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

.field prevInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

.field prevInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
