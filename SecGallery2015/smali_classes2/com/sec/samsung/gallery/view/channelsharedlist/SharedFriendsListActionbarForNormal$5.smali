.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$5;
.super Ljava/lang/Object;
.source "SharedFriendsListActionbarForNormal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->createDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal$5;->this$0:Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method