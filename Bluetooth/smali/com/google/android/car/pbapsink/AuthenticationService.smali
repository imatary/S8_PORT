.class public Lcom/google/android/car/pbapsink/AuthenticationService;
.super Landroid/app/Service;
.source "AuthenticationService.java"


# instance fields
.field private mAuthenticator:Lcom/google/android/car/pbapsink/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/car/pbapsink/AuthenticationService;->mAuthenticator:Lcom/google/android/car/pbapsink/Authenticator;

    invoke-virtual {v0}, Lcom/google/android/car/pbapsink/Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    new-instance v0, Lcom/google/android/car/pbapsink/Authenticator;

    invoke-direct {v0, p0}, Lcom/google/android/car/pbapsink/Authenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/car/pbapsink/AuthenticationService;->mAuthenticator:Lcom/google/android/car/pbapsink/Authenticator;

    return-void
.end method
