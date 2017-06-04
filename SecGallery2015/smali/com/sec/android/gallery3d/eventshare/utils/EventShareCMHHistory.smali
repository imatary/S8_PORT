.class public Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;
.super Ljava/lang/Object;
.source "EventShareCMHHistory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventShareCMHHistory"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEventShareDataListFromCMH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/eventshare/EventShareData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getEventShareDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/eventshare/EventShareData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;->mEventShareDataListFromCMH:Ljava/util/ArrayList;

    return-object v0
.end method

.method public restore()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getEventShareData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;->mEventShareDataListFromCMH:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareCMHHistory;->mEventShareDataListFromCMH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EventShareCMHHistory"

    const/4 v1, 0x1

    const-string/jumbo v2, "No data in CMH DB"

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
