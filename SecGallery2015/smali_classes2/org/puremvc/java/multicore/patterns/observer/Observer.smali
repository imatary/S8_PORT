.class public Lorg/puremvc/java/multicore/patterns/observer/Observer;
.super Ljava/lang/Object;
.source "Observer.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/IObserver;


# instance fields
.field private context:Ljava/lang/Object;

.field private notify:Lorg/puremvc/java/multicore/interfaces/IFunction;


# direct methods
.method public constructor <init>(Lorg/puremvc/java/multicore/interfaces/IFunction;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lorg/puremvc/java/multicore/patterns/observer/Observer;->setNotifyContext(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/puremvc/java/multicore/patterns/observer/Observer;->setNotifyMethod(Lorg/puremvc/java/multicore/interfaces/IFunction;)V

    return-void
.end method


# virtual methods
.method public compareNotifyContext(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/observer/Observer;->context:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotifyMethod()Lorg/puremvc/java/multicore/interfaces/IFunction;
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/observer/Observer;->notify:Lorg/puremvc/java/multicore/interfaces/IFunction;

    return-object v0
.end method

.method public notifyObserver(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 1

    invoke-virtual {p0}, Lorg/puremvc/java/multicore/patterns/observer/Observer;->getNotifyMethod()Lorg/puremvc/java/multicore/interfaces/IFunction;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/puremvc/java/multicore/interfaces/IFunction;->onNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    return-void
.end method

.method public setNotifyContext(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/puremvc/java/multicore/patterns/observer/Observer;->context:Ljava/lang/Object;

    return-void
.end method

.method public setNotifyMethod(Lorg/puremvc/java/multicore/interfaces/IFunction;)V
    .locals 0

    iput-object p1, p0, Lorg/puremvc/java/multicore/patterns/observer/Observer;->notify:Lorg/puremvc/java/multicore/interfaces/IFunction;

    return-void
.end method
