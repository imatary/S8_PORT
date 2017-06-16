.class Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$2;
.super Ljava/lang/Object;
.source "DecorationAttachFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->displayCustomDialogue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationFragmentRemoved()V

    :cond_0
    return-void
.end method
