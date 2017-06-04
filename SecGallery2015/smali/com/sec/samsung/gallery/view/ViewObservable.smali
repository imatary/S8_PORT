.class public Lcom/sec/samsung/gallery/view/ViewObservable;
.super Ljava/lang/Object;
.source "ViewObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;
    }
.end annotation


# instance fields
.field private final mObservable:Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;-><init>(Lcom/sec/samsung/gallery/view/ViewObservable$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/ViewObservable;->mObservable:Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;

    return-void
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ViewObservable;->mObservable:Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ViewObservable;->mObservable:Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;->setChanged()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ViewObservable;->mObservable:Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ViewObservable$LocalObservable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
