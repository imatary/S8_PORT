.class Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$1;
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "package:com.sec.android.mimage.photoretouching"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->mOnAttachInterfaceListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    invoke-interface {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationFragmentRemoved()V

    :cond_0
    return-void

    :cond_1
    const-string v2, "Activity Not Found !"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Target Activity Not Found"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
