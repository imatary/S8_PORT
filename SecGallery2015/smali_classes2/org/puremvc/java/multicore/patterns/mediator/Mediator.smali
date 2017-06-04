.class public Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.super Lorg/puremvc/java/multicore/patterns/observer/Notifier;
.source "Mediator.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/IMediator;
.implements Lorg/puremvc/java/multicore/interfaces/INotifier;


# static fields
.field public static final NAME:Ljava/lang/String; = "Mediator"


# instance fields
.field protected mediatorName:Ljava/lang/String;

.field protected viewComponent:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/observer/Notifier;-><init>()V

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;->mediatorName:Ljava/lang/String;

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;->viewComponent:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/observer/Notifier;-><init>()V

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;->mediatorName:Ljava/lang/String;

    iput-object v0, p0, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;->viewComponent:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;->init(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getMediatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;->mediatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewComponent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;->viewComponent:Ljava/lang/Object;

    return-object v0
.end method

.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 0

    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;->mediatorName:Ljava/lang/String;

    iput-object p2, p0, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;->viewComponent:Ljava/lang/Object;

    return-void

    :cond_0
    const-string/jumbo p1, "Mediator"

    goto :goto_0
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public onRegister()V
    .locals 0

    return-void
.end method

.method public onRemove()V
    .locals 0

    return-void
.end method

.method public setViewComponent(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;->viewComponent:Ljava/lang/Object;

    return-void
.end method
