.class Lcom/android/server/display/WifiDisplayAdapter$13;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$connectingMode:I

.field final synthetic val$isPendingRequest:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;ILjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->val$connectingMode:I

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->val$address:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->val$isPendingRequest:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get9(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get9(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->val$connectingMode:I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->val$address:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->val$isPendingRequest:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/WifiDisplayController;->requestConnect(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
