In dynamics - the general study of how systems change over time - chaos is seemingly random behaviour with sensitive dependence on initial conditions. Importantly, chaos can emerge in a deterministic system.

We can get an intuition of all of this by exploring the behaviour of  seemingly simple equation: the Logistic map.

[insert logistic map equation: x(t+1) = R * x(t) * (1 - x(t)^2 ] 

If you select a value for R which is above 3.57, then x will behave chaotically after an short initial period.

Take a look at the two figures below [insert figures]

In both cases R is set to 4. In the first run, x(0) is 0.7 and in the second x(0) is 0.3.

What we see is that the paths that x takes over time differ for x(0) = 0.7 and x(0) = 0.3. In fact, you could choose any two non-equal initial conditions for x(0), arbitrarily close to each other, and over time the paths that x take would diverge. That’s what it means to have sensitive depedence on initial conditions. The dynamics of the logistic map have a sensitive dependence on the initial condition, the initial value of x. Furthermore, in both the case of x(0) = 0.7 and x(0) = 0.3 cases, from t = ... onwards, the behaviour of x seems random (though it remains bounded by 0 and 1).

In this example then, we've generated chaotic behaviour. Notice though, that we've done this just using a seemingly simple equation. It's a completely deterministic. That is apparent if you run the model with the same R and the same x. If the initial conditions are exactly the same, then the path x takes will be the same.

---

Chaos matters because it happens a lot in nature. In planetary dynamics, meteorology, climatology, electronics, crowd dynamics, population dynamics, markets and finance, ecosystem dynamics, and even geo-politics, we find seemingly random behaviour, sensitive to intial conditions, emerging from deterministic models of behaviour.

The consequence is that the future is very often very difficult to predict wherever we depend on approximations of the present.

We can illustrate this by applying the logistic map as a model for the dynamics of a rabbit population in your nearby field.

When the logistic map is applied as a model to population dynamics, x(t) represents  the population at time t as a proportion of the maximum population. The maximum population can be thought of as the carrying capacity of the environment. In our example this would be the maximum population that the field has capacity to maintain. The field has a fixed size, and only so much grass and dandelions to eat... R represents the difference between the birthrate and the deathrate over a time period. The birthrate can be thought of in terms of how much the rabbits reproduce, and the deathrate captures how much rabbits die (from old age, disease, foxes, birds of prey, being run over on the nearby road etc.)

Looking at the figures above again with the interpretation of the rabbit population, we see that if at time 0 we don't know whether the current population is at 70% of the field's carrying capacity, or 30% of the carrying capacity, we are not going to be able to predict the population in the future, at t = 20 say. It would turn out to be x if t(0) is 70%, and xx if t(0) is 30%, and other values if t(0) is somewhere in between. The reason we might not know what what x(0) might be is that we might not know exactly how many rabbits there are (they have a habbit of hiding underground!) or because we are not certain of how many rabbits the field can maintain.

Perhaps it feels unrealistic for us not to know whether x(0) closer to 70% or 30%. Surely we have the tools to estimate this? That may be true, but even if we compared x(0) = 49% and x(0) 51%, or some other two arbitrarily close but different values for x, we would find the dynamics diverge into different seemingly random patterns of behaviour after an initial period of time. In other words, even with much better approximations of initial conditions, we would still not be able to predict future population dynamics. That's because the dynamics exhibit chaotic behaviour: sensitive dependence on initial conditions.

---

On philosophy

The phenomenon of chaos emerging from deterministic systems has profound implications for the soundness of Pierre Simon Laplace's theory of determinism, popularly referred to as LaPlace's demon. Laplace wrote:

“We may regard the present state of the universe as the effect of its past and the cause of its future. An intellect which at a certain moment would know all forces that set nature in motion, and all positions of all items of which nature is composed, if this intellect were also vast enough to submit these data to analysis, it would embrace in a single formula the movements of the greatest bodies of the universe and those of the tiniest atom; for such an intellect nothing would be uncertain and the future just like the past would be present before its eyes.” - Pierre Simon Laplace, A Philosophical Essay on Probabilities

Chaos demonstrates that even if we understand deterministic laws that govern them, if we don't have perfect information about the initial conditions, then we will not be certain about the future, because small differences in initial conditions, can lead to significant and unpredictable divergence over time. In Laplace's words then, even if we "know all forces that set nature in motion" and that nature "embraces a [...] formula[e]"), if we do not know "all positions of all items of which nature is composed" with complete accuracy, then we will remain "uncertain [about] the future".

Henri Poincaré was the first to point this out:

“If we knew exactly the laws of nature and the situation of the universe at the initial moment, we could predict exactly the situation of that same universe at a succeeding moment. but even if it were the case that the natural laws had no longer any secret for us, we could still only know the initial situation approximately. If that enabled us to predict the succeeding situation with the same approximation, that is all we require, and we should say that the phenomenon had been predicted, that it is governed by laws. But it is not always so; it may happen that small differences in the initial conditions produce very great ones in the final phenomena. A small error in the former will produce an enormous error in the latter. Prediction becomes impossible...” - Henri Poincaré

Poincaré pinpoints the problem with Laplace's theory. It's not that it is not logically valid. The conclusion does follow from the premises. The issue is that the premise about knowing exactly what the initial conditions are precisely is not sound. In reality, we don't know these exactly, rather, we approximate them. From there, it follows from chaotic dynamics that tiny approximation errors can lead us to unpredictable difference later in time, blowing out of the water any ability to be certain about the future.

Now, Laplace was not arguing that we humans are, or could become, this omniscient intellect. He was only suggesting that such an intellect, some imaginary demon, is possible. That possibility is enough to suggest that the future is predetermined, regardless of whether even if we humans - limited to our approximations of the state of the present will ever be able to reveal this determinism.

But is some such intellect really even possible? How much information would it need to to be able to know the present perfectly? It turns out that the intellect would need more data than can be computed in the amount of time that has elapsed in the universe. It would need more computational power than the limit on the computational power of the universe: about 10 ^ 120 bits (derived by from the maxium entropy of the universe, the speed of light, and the minimum amount of time take to move information across the Planck length (Seth Lloyd). https://physics.aps.org/story/v9/st27

In this sense, Laplace’s demon is inconceivable. Laplace’s demon shouldn’t even be invoked as a thought experiment, because it is not possible to conceive it properly. To attempt to conceive it is to allow for the possibility of an intellect that has processed more data at a point in time than is possible to have processed even if it is able to process it at the fastest rate that the laws of physics can possibly allow.

Without Laplace’s demon, we – and any intellect we can hypothetically conceive - are left with only approximations of the present. So it follows that even with deterministic laws of nature, chaos makes the future very difficult, impossible even, to predict.

---

About bifurcation and period doubing route to chaos, and universality