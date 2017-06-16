.class public Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJob;
.super Ljava/lang/Object;
.source "HistoryThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryJob"
.end annotation


# instance fields
.field callback:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJobCallback;

.field data:[I


# direct methods
.method public constructor <init>([ILcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJobCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJob;->data:[I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJob;->callback:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJobCallback;

    return-void
.end method
