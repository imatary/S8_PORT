.class public Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.super Lorg/puremvc/java/multicore/patterns/observer/Notifier;
.source "SimpleCommand.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/observer/Notifier;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 0

    return-void
.end method
