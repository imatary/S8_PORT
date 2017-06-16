.class Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter$1;
.super Landroid/os/Handler;
.source "ChangePlayerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;->initDataChangedHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;->notifyDataSetChanged()V

    return-void
.end method
