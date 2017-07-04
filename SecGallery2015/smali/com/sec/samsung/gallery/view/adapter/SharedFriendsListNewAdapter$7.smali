.class Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$7;
.super Ljava/lang/Object;
.source "SharedFriendsListNewAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->startSendNewWebUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$7;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$7;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$7;->this$0:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$7;->val$phoneNumber:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->access$1600(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;Ljava/lang/String;Z)V

    return-void
.end method
