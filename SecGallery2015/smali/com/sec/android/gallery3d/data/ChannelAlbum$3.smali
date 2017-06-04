.class Lcom/sec/android/gallery3d/data/ChannelAlbum$3;
.super Ljava/lang/Object;
.source "ChannelAlbum.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/ChannelAlbum;->updatePendingProperty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/ChannelAlbum;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/ChannelAlbum;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$3;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbum$3;->this$0:Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->updateContactInformation()V

    return-void
.end method
