.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$2;
.super Ljava/lang/Object;
.source "FilterGroupDetailView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
