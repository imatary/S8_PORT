.class public Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$LoadingThreadFactory;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadingThreadFactory"
.end annotation


# instance fields
.field mPriority:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$LoadingThreadFactory;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$LoadingThreadFactory;->mPriority:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$LoadingThreadFactory;->mPriority:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$LoadingThreadFactory;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
