.class final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$6;
.super Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;
.source "DOMConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get4(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get3(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get1(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get11(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get2(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-get6(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set3(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set2(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    invoke-static {p1, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set0(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    invoke-static {p1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set10(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    invoke-static {p1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set1(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    invoke-static {p1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->-set5(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z

    :cond_0
    return-void
.end method
