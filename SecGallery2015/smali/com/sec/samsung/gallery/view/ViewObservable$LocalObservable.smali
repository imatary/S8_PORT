.class Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;
.super Ljava/util/Observable;
.source "ViewObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/ViewObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalObservable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/ViewObservable$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public setChanged()V
    .locals 0

    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method
