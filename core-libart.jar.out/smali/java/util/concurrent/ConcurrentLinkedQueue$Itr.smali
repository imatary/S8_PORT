.class Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 4

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v2, v0

    :goto_0
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    return-void

    :cond_2
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eqz v3, :cond_1

    if-eq v2, v3, :cond_0

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v2, :cond_0

    new-instance v5, Ljava/util/NoSuchElementException;

    invoke-direct {v5}, Ljava/util/NoSuchElementException;-><init>()V

    throw v5

    :cond_0
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 v0, 0x0

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :cond_1
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    return-object v4

    :cond_2
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v2, v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    :cond_3
    move-object v1, v3

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    return-void
.end method
