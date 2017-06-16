.class Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "DecorationViewPagerAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->showSettingsPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationViewPagerAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
