.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->displayCustomDialogue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    return-void
.end method
