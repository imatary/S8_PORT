.class Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "MultiDirectionSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$DrawerToggler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$DrawerToggler;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$DrawerToggler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mLocked:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$DrawerToggler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimateOnClick:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$DrawerToggler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->animateToggle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$DrawerToggler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->toggle()V

    goto :goto_0
.end method
