.class public interface abstract Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SecurityCallback"
.end annotation


# virtual methods
.method public abstract dismiss(Z)Z
.end method

.method public abstract dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V
.end method

.method public abstract finish()V
.end method

.method public abstract onKeyguardClockandNotificationsChanged(Z)V
.end method

.method public abstract onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
.end method

.method public abstract setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
.end method

.method public abstract userActivity()V
.end method
