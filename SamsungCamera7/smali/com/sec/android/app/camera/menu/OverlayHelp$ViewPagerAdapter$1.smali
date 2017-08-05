.class Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

.field final synthetic val$this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;Lcom/sec/android/app/camera/menu/OverlayHelp;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter$1;->val$this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    new-instance v1, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;-><init>(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->access$2102(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;)Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->access$2100(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;)Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x13a9

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->access$2100(Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;)Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x170c

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/OverlayHelp$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
