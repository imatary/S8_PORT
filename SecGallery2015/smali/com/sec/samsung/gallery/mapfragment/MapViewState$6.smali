.class Lcom/sec/samsung/gallery/mapfragment/MapViewState$6;
.super Ljava/lang/Object;
.source "MapViewState.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewState;->getFocusListenerForZoomButtons()Landroid/view/View$OnFocusChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$6;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x7f020214

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
