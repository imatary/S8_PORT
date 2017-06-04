.class interface abstract Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface;
.super Ljava/lang/Object;
.source "ChannelDataLoaderInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelDataLoaderInterface$DataLoaderListener;
    }
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getData(I)Lcom/sec/samsung/gallery/view/channelcomments/Comment;
.end method

.method public abstract load()V
.end method

.method public abstract updateContents(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/channelcomments/Comment;",
            ">;)V"
        }
    .end annotation
.end method
