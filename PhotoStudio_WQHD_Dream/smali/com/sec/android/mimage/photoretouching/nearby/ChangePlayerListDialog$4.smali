.class Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$4;
.super Ljava/lang/Object;
.source "ChangePlayerListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog$4;->this$0:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;

    # getter for: Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->mListAdapter:Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;->access$100(Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListDialog;)Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/nearby/ChangePlayerListAdapter;->clearIconCache()V

    return-void
.end method
