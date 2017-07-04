.class Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;
.super Ljava/lang/Object;
.source "SharedEventSchduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Timeoutable"
.end annotation


# instance fields
.field final mEventID:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->this$0:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->mEventID:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->this$0:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->access$000(Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->this$0:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->access$000(Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->mEventID:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v1, "SharedEventSchduler"

    const-string/jumbo v2, "The event is not valid in timeout."

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->this$0:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->access$100(Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->mEventID:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->this$0:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->access$200(Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;Lcom/sec/android/gallery3d/eventshare/SharedEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->stop()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->this$0:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->access$100(Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->mEventID:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    const-string/jumbo v1, "SharedEventSchduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->mEventID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is timeouted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->this$0:Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;

    iget v2, p0, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler$Timeoutable;->mEventID:I

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;->access$300(Lcom/sec/android/gallery3d/eventshare/SharedEventSchduler;I)V

    goto :goto_0
.end method
