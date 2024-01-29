
import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget {
  const Assignment7({super.key});

  @override
  State createState() => _Assignment7State();
}

class _Assignment7State extends State<Assignment7> {

  int _count = -1;

  void _increamentCounter() {

    setState(() {
      
      _count++;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Portfolio"
        )
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            (_count >= 0) ?
            const Text(
              "Name : Manish Chavan",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            )
            : const Text(""),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                (_count >= 1) ?
                Image.network(
                    "https://avatars.githubusercontent.com/u/119728876?v=4",
                    height: 100,
                    width: 100,
                )
                :Container(),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            (_count>= 2) ?
            const Text(
              "College : Zeal College Of Enginerring & Research",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            )
            :const Text(""),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                (_count >= 3) ?
                Image.network(
                    "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMcAAAD9CAMAAAA/OpM/AAAAq1BMVEX///8AL4UALYQAKoMAJ4IAI4EAKYMAAHkAFX0AIIAAGX4AJYEAHX8AIoAAEHwAFn0AC3u2u9Hz9fkAAHPO0uGmsMzs7/UADnxMYZ1bb6b5+vwACHvg5O65wtjm6vLZ3up4hK+Yo8QtTJQeP41VaaJldqlwgK/Gzd+jrcooRpB+jLaJlryUoMLByNyIlbsWO4s4VJc3UZUONIdOZKBCW5sAAGxseqpxhbRaaqDL1zRNAAAgAElEQVR4nO09aZuqOLOyE4ggNIsiixsuuNuOZ/7/L7upBBAl2PZZZuY+z1sfzrERIZXUnqpKr/cnwM1WzvRQ5Ivr6Tw7n66LvDhMnVXm/pG3/QlI99P8LIa6gZFiqqokAkiSaioIG/pAOufTJP23B/kFeLuFqBvIlEShC0TJRIYufe5W0b89Wj5k06GlI1WshivD/Bu6bgHougHrI1cIiirSw+Eu+7cH/QyryTFEssgwULA+0DejHzs/2XtZFsdxlnn7xN9NRjN7oGOlRFZF1mWy+reHfgdvougKw8HEunoqfC/ovDnw/OKk6tiU6A8UGy+9f3CsnRDs5iFFQpTxYH7zszvZv2CA2FnOB5gtoGIdd/8243sjG0l0IWxr4T+NZvdayKb+yLLZFCB78W/Sl7MJTRGQ0KXlvv311f/yCauJqNNHyNbc+QMjfAf8ow1LIWEr5yBBQDu/85hVrmP6HPuy/q3jew98wQCSkPX5uoN8Mn2QAV93sklW0pLrb9iiYPGfxiQ52iJl0b+5dB2td8WPq0QIX/voHtrsvozeyFKAUYzLP0ld2dWSQGaOl3HHHenog/K/qnBVHb3ofyTNX0y0PqyJfv6nlKO71FRYC3vSrSXIDM8IHtKMT3OOdnMyw3ice7cwABN1fPtHjEnH7MNEj5dfyHzPFlRp0/HlTjN0UTk8DThYWjLMEPpa0P0qBJ8WmTMpHDKK2nbfucPG0Ar5kqzXW5pkwH28mSQPl+PPEChWv75a6t8Ajg7vx8dqePMd/JvxmP2ke73V5dTxoNSCRbXO6+cBr+aYTJRs/ckliXL69vF9FSbatJeNQo5odVVKd0UH115lU5CuXDGxswj7idbij9n1mdAH0XhuvH2K8VUf8+YufsmsUw3fVGXJ/zK9glBXpD9kP64HIIGs6cM1JEidzNwN2cZ3e3tt0fkqA5ZkPO36/lcgBwZH8yadODMM4uXA/wG46OvdtpgsJ8V2tybOec0LbK123RMQb+DJ+ui3jLwJwQyRB1tNSshmg7FBVdfzvLmr9XJmh7qNMUKKYioKQhjbuqXPluvVneB+vHjhBFgRzX+z3IpFItgl/clocOPkKMqG9bG7XwucycYiPh/XRSfOObbDzdJ5w99IdELGqvpbtfvKIM80BY54+cR5L3Mq7zTbbgxDkapBq2afrAMF1DfVCjXJNOzN9ksujo8KzF2XBvoJcAZkBPjKE4Q/tHpqs8MlRGysMO2Wuhnmh+naB1hPD/lwI1l25c9KyBIOX8x19GmQW7Xfpkn8MRmcfuN+Ny05JvLPFhLZCO3xhrBB0EY7Clb+cja2GbZiP5ytXyuJH4RJxPA3ia01WQ3R6rBAEsqIaYGpL0SYxThvv4hMRavd2TBMum7YLjiscmfuHVDCYNe+5fuwHoMof+XgxPmgT+M4Bh45jwLGlY7zzex8vQ6vQEQ1goEzQqAjwPjPW+TlTdiPCYp+SBAJfwMi/oC8THvh3aS5ZdJYgXZ1KpHqVRLBtSWzL0mKomowWuU8WVe2WOQMNUqJpjV6FiAfQK3rI3xMyDQKv05ajkaIKkw6v3cnGrikkiFt7wz/Mb5WX4fKYmmqi6FqETxiTVIM4f7jYCuAIBRMbfloxVyt0f7ywSZvH/4GZl8RFhe1bjTWCqhHSZ8335PpglW53rNNEuu2t7K1GMbdF6y/6ReOz0bubMC1FProYcYPimyo8/KPfQhT+UviNyP6WhzURJU+rX82A4NOtOePiHq6oJ6af9oVLcUW9oGBfFE3jJw9bb8BhScamzubxEPCOrh+bQKTaf2CQgwk8oaQsHhKudfFj0y8Bf9WxGVo4B4XWdlExtxdEoJHpfMcgw0nlES9jyviS45g3kjjosQip36zeKxnjfJo/+dNlBkxRnRqBR4Lt+ceheaX8Qy0lFkKRX8+Fpflm/aGIDYWxNP1Co8D0hg6+j4r1LBW6VObumcbGHmWLzY2hFpw/TPikhBp+H2zuoSc0D4xOwBWmnWYoaZz54+Zt8PGLhkmNq28wkM6mFa9IJ5dD+hToUR/Mi9Asxh4IpoAo7gj5i5X4v0qX9aHvHY7e0ti/qJOM/81rMkkmNXaf8qKZOb3L28g102zZAyPGCHJaFP+5WBBFNTql4TM9Iq2VQWsgsxCRKveFAMwKAYKlRGJqMC8lK8onnXflXyr/5QayYgqlaRKHmY2BA8X5cS64HiI+qL6domOlVNBwMcCMsSwWpCVoZeUHth0CQqkpz0XKXTMuSlqVFZFdEnQhi6wrz25k9GRkFr4Ex5iJJAf1hPpbqictz42MLrMpFY8EEFAJ3P9EIuaYmXqzeVzTIf04yhKM/pttDIoxyPzk/ykJP+VIWCfecE+KBPVgHdmxfN4YhvMnu9HtnJiatRBC/eo24pg5v4qJU/a60BTF3jfStYoDUvq8f7THUJuNpQkjVJ7rpsmM2vOioh2LuFymxDgRqa/iERRMPa9jQmYUktd1Mm3bls4OURoKd9mEYdo0X7FD8Esn3oFKsMiTlhb8duBiKgB6Rs2m3KC5mqoilphqGhM3VKfOLYjiqyGZenD7eWKClRLSaw3IaaJ7ZFH6qe4stS5cQsgXsIi39Trrk4I51L9RccfmYj+wax4cEndqSYJBqPZC1W/U0T4+IblvlYcR1MvcFNvv0+S/X7lpW6UTPONQpbTUq/O0gxhyr1QFEHFjVRJoa8rrG6rdE7IzvjeztWCyPNnrprOajTGIDk89fxjRjxVxph0QUZIBB793K2CLDkM5ziEfVoM+7YWPg4PDt11mxMhrRh0sTaqdFAGrqdLM429bgrPt7h2YaYRUXPlfdMFDpkV3AqDFCUaYgiruxuLeN1LwlI/XdRjOpER5c/AH2EbtmWbProoqgrWjc916vqzsF8ERMBtse372IgukuFWLOwAIny7cGd8j7IilYjcefsyoQlAYwyscCCGsEkWeWsjykZ+KOmKSazzdDob4HJnWQQfXVEU8M3LKyoezKZBDOuyOCvqmej4ORHEjdElYBcOuLbpTCV6/n2ZNSEcNebJ6kyv0CByea5IIHI+FRb3yQ3bWqarT7ZLRmQksnVdnS1uk8nktjhLum6XO+zE8/0kjJ98qIKd9W7mRX6klgScQK6uyIiK6XdEIdsQE9cF8WJLAeyuVsI47U11kIPRXB0z+2GfJnOdroSKrctoun80j+PVdHS0MLUBVf3i9/y+Iiq9T3LBfuReELGizuPogszw4F3Ldyh3aJwNeaXVMA6Ib0qkbookm71+TjfbJDwerrs2quL1cMBceePiuLcPv3ciMu/Z4JgSqa/OeW4+mSb1re1TIv8Jk9s8bqJ248OqbtQxoeMtAl7yNjrbg9609gIewfXPlkL9lk1GpnYjcgLEBeHoPk/pOUQhWN1+3cPgJB6Tl3bjkHzY/r0ZsuUKEDFdDjYhL3epwSwr+u2dVc9uNkQmpMHNJbZjyPnJ4tkurObmpPJH14KEDDfkbMwAj0kCWevpQEGKyNhwpYmobyrZSkTUz/4BRD1djDrgsx5xMBmDy6Eoe3c44YyiZRdWHrxHSM5+Z1OXaE11yLlOH5yBy67OCktiRipZJGs8dAsNvAdrxFhzieUO0BoDC3K66TvuED8x8RGly51FTpU6+yTce+T/pgkJECBH5hXEUgcLN8AiURuJoepsw4iYHu4J0822ahEnCidETUF/eLBHNwdKS70Bqz3Mh08mHt2RPNp0QaJeNn5rQc4SV/fDcprAeBuVrla6QYrAqCSTZZjXu6X9Lh5gZ4KlrjxeXQ50Czh/RB4zrqNdVr/Y7/IZwXkhv8EhMF6eCiLUJmIXrHDZNOcgVW+EtgCRPbg/ptD4zft49LILWOrNwFJ6RLIpg1iMiFdJNW289wuiCxTD2sCaZISBv4zCA7Kz8nNDXEyJHLRgMYPr4mapdF0dCfwIB+J9+NpUN9/AoxcNDaE02Bj4RPq5QxNetgcrjyiobPShg/ZUT4xdriqfgxuQAvFVTrdSXw6MkqrgzbBRGBL7PFaIC+EPKiv+5/CoLHWGCPHSCkymMbrA+Hsjk3jswCvpEiyayj3eAwt3KVoGBySIlduRazUDLhWite52AqEGtMkukpVBiKwVff0eHjSeL1CjbaWNCB5kdtaKkdDpI7Yo2yP8W5WVOs5xIVZWy/F9AHIH2vUiSBeOLKMi2zhkC+xV4j/6tCVDtHyIRbRt7BoPxTCMh+01niCsfIEVWE9EMM+lQRZbbHtohytzSsafhaaV75+Sy/gVGnTFAkjF0cyLKJ2K3RrisMSrEmXy9VEbVZhMFQFPXEg9CFsmTIWHUuyT1aaBiNjhzQGPiYO4dwV3MtXtfa/KVD6KgvxJ/nc/CFUHP0pB6pLZMV6JXkKQKmWD+AIWkIS0jcf8MIOM1rEF8PfYHBpEOs9Vruu2tBAFWCiYuhq0LimzJgtORNPQDPdRbo7vtE9eScWnx/i6Si7IyTg/u9GIiAgtuTxaQLhQ8MtfUQ16lC7jahbSmULtRoNDp852R2Hr0XDFnaq6N4O2ZLzKKEKScFTQpfEFsSLkRZmwdYeVTta22xp1DEGshNRIlkQW8k6JHQvLsSYuOJsPD8g8Bef3i0AM5Z8K8OTFnSMaZvI0Aw+YDs/yRRKxBdHasol4l7jbwSXKwyy3M+PQmCFE/yC+C+UOUSUSMRYIbhtt4YGB8mAAcSBQG2goryME1HwLMudA6WF/tRSkw8IQDuHkoRAW7FYhEWEfvTQEJoN1L1MgwB4hgvsUZIcoHqIR0uLMEBXcuxJrZPzaSAe/qwK+W3QHcJmrIL0/103cX5igbteYGRKP4BHC0rsc9b1N3CD2NpfG0YNjxoiN/MQNRWSivqxMIDvGcMC8b/lxj7DoN0SV8lXgaVoFQ3aCIRvCzu0dIRQTgfPWJiH0QmKRxZLLzJRy7iKPOi5AbAHxQRdjWTQnLqGwYw+Mn1nHgxiAT1ejoX0dYoZgiBL1PE0tt+l8BFqE6GCp7cnezJoFWjDnMQ8krjE1nIKlY5mKPpT1PchTnh93B9hEqqGtZNoQE2mJit4NzShtp4UiAwtk5DmDFqcnhEoQ/zkpkZHj1upP0YPbko00SZU2sNpK13xQ8MIGj/OkcxsmfSJN3Y0MRnuW68hk293E1EYtAg5sUejYMqTbL62rxB9BD7kM8VmyVjuCnf4qnJA2DZI3d5Jc2HQ6JIbhrEBcWaXxsGvYfHeYSQLm66MfigBM/DQe65l+ImRce5iSQDdEx6aoes1Hd9iSVUaRpCJDxqhO2IgtHmEVsI/BfQqR1LglAnyySNLjpWDpwdUX+pRtg9U8Lgep9wpqgQz2BF6vjgPbnDaE6oY39cAgXK/QJVZU2EJ7RPyw9sSTJ3clSVJYNqwqCE6MNL0b7u5Br+hT0s7q6aQoEmeirfRSYtJyKRtUi9jSVYTM7ZZ1l4Wvo5NTvSGqIOK8aFDZM4j9+9QDCVW2fZSt8yO1Qj2i1+TWyEzeyHpUcbaxJr4wR28S2nyVJLpvSlwaTHsXD3BZ6ULvDydTh+RGY87sjLbnQp6JeNskRAu2KYgwgtROiVbFLlkBAGHuGtj++9t4gMyUot5WQ32sG5vJDxNMH6KK8X3I5coQocDVhCeJowWXJgc5CFhYnVzuClJDVLEVHr2Lh0vUgu7FAxEtdpBYCgkpbMh32VSOh9hLHD1PXdq2+wyioiXDiEBXu43XrOlyiDMKl+76zkc8ekNV6O92qM40x7DLvm/Kpmn56ozwM8e5BTO85Xa65j1KcQeyzG0Fe8dDfxilBPACjSc8CJdKV88oM2tcQ4KEG7A0BpXJh0vOdMFeaVMFERWiwrvYf2bzyOwIfPDw+BoeX0CDbMFYHrFw7lmj4h12nLNecCr87IAqs0riERBdu1b4N3m6mELlNcgwpduZ+BoPZBjGXcE8TRQd8sIymVZJmJcNez2EvFNF1xWhXziZG7GL7Z0QIpkqor+PEWRx0zZKNFvbEZnyymL/Eg80TZLEqRF5wmMogyx0HqsNcpNRcnph1WUfkAk0knlSc3oXY9OaTYonWbzWCNsfeHbYN/BgocCPSp1b2gORF7ynH/rlRQ98GnSlhj1xTFA7G5f8vl9uMUxrcQbzQAT3KqnC3nvD8IgQfaE93sCDWgJeVsFjgSFZqGZSYK9Y/GDEQuliIZuiWUZhiTTmmEw3sxZCU7pH4zlUCoLYzTW5vMuz9YxY8saLcPeXeNhZVALv5ytihAjR7AKU76aZt4H0P8Kn1IBYaePlpdo3JETPsXgb1DZFaD0ywLknRj7kSF5V0Zxfb8WO0JQeg6J5YVxlHwYP7niIfZa6bxg8RFKQIoEtn08XZOi6TXdBKXLky+My7aWyye5scHQDiOnA1Lm7WsgiMqnaODLRdhFVFiHEihC6EOJ7ETRwEx7sUQORCnh4BIYo4pS9ERu6hcRLRKUxUQopfW2qlXlHBs9mIiQEUmx3NmgNH6KUI7Cp1/BwO8nPwmCgCnpE9M/4+zVYVou++Hi4MiT1bOQjWX5/76VbTXNBEYr9+paMUUNFbI9ALE1K9fubTPGgYk9mXHlYVobXwhJcMqLxt9F4Gw/YhdLTq1hRPs0oA2JDz3fvuZ7U6c69n6qETRopVJ43TPbrKXi61h/EA9gvfvom1TnBOGCa9sbt9Y7HAm2cq5bz8OgxYyf8g3gIHDwCnZPnA2HD9npc1VrLDyFFJd0SQSU/B1dW/joI/yxdiUBXo8ca/G/QFfB5aaHPa+0gPIvYfKz2gM+/n7dpNRF4Ia9chfirwVWeTx0PliXZLALYEGvweQl8Pq/lLlEw9cX5o0m5H5niICIG/he7jK/xEJVSiGOu3CXUgoO5KGFMtId8PSmWS30N+flOh+urjkyOu9tg/l5WiLpiEhSOXHu5DVETenctb3gBAdd1uYtK/QcXixeZYC4jJAEvA0u3QnGgB9ubUsSDbVtdd+W4nhGNJG6WhpZdufZyC4uZrFKQ2L93V4otJthXz/ErAEr1QUjMoUBUF4f8AtYW14cFu6TtoINJ2bK6cpkaXd5Cw5I4F5Af/Siy3HzlDpbgHk3xAe7sQSVH9MGLX7HRqSMw43quBrtgG8giJhflVo0qd8R8qwtMygnLvBKFHxczDzRrOu0IVDQhmMst+VTjQa2LOqjy5H8Qa7y/dbBZxOlQIMuOYc6e/QcKN+58Ate0lq40xfYfBlbkvijKBNkJX949onF5FSCZbwhIHXgQaxonW1tie7v+VQXCJkZsm3kbkqkBlUnJuxhlyboYnS+6ZavSNXi9WUogFV6gUcYe7n894AEhXiv2RydEuaiwRJApG56rsGHG+PO7eSEFag/UQ47ceDXURdgs5UYk30TjGauHt3pVNIcx/3R4+SAIWbzNDkXg7YCA/mmFeKJWTMLZ+h2x6ztsunnjSzwIR6qt3RIanX2+GHToY6IW2svEDTJCsPQVg8ykr0ffhQcE/lqcwOVdWDnp+WKP+bAttxt2Sx5lU7T+EYxf7w028JBNAq+icE94xNyUJAg9t7Yp+O4gFcdm62ZQQA9Tn4+x5s6e99q68JAXy9ttKbxE5AGPHSI2U6qVpYW9AwvdzGl0Niqd0JI+QBbzkr593uJBXtmDE1tYEprC3nzL3OHhwcKbUv8VoT3gQfc017hMUIpCHG6o1U4XaQTk4m5Ka5ZL8j3GTG3LTag229wpfXZcnFQBNktfZAg+4zGZnGjPoo5kWOOOhwe+ZnqWRLSAwul4JkEaGUQ1wbryPk6pJ49L+Wl0mXljXp7XhG0nxgsL8le8ApjO9ojEkrszBO944ISahNH2Mp8fF0M+NHIbFzKhecJ+GCl4MFwHngGWHDH9mKlxVDCSS5rJeC4ihRN3O5FoQuLFBhpkyew0Le4F2Mw9nSu7W3gIiJlQ8uVyMb+uvYYdID3Z21qyvQwIKsZF7Ed0R4PRhI/EusuI3xmdJYzeNsYg5Q2UXq6YsClu5reBKNrunKVFfYlHE76uhh+ViV5AFfF0pis0OxGIjZYTpvTBBmsrdePtMFEg/q5gsI8Bk0aOw3KZgKJgYyiei7LS1yVjl0ApcJcTsulg6/CLrmkQpTIarBsUJpAVEUxUwCY2MqEqQ6MJkfPORBlXv2v/xSyFJkQuS/eBzdK5urnqkmwrRTybOZAu1VmHMcJ8PLoK6iogGqxp4kXTmzkg/yss7WV3HOa5Il2dZJ+kLDmgw8gjDFJZlfuBRdYVKCcqcxqnWFSxQQsBYV0hDb6z5OqK+HiInQmKAJBf1+z0kmgysDdwaL1RfqwKU0D0d2Xrbxv7foqIJMZckNNIrgahePSrx2Wz9Eomz+wKN5w6MnhfxekjMu8PcYNCw+Xeu/x3dW1XtUshVztTeL2GQU6c1/KtUJ4DGZwjXSvvc5eD/jXW7inWbZjxEXmRU0gkCVg7TVJx/c+IWCpNXRWUW38QnNU7W2BKVQJWdqTtRXSaFTdnSRirorJ7Uk0RbWeLGwW4zxDNdFzDW3gAVaFipU2fVDGkajRCDOUDKNd2Pov4lNRo3n6MoZ2hPqCiAUjxMadhPdpIejBvFkQ/g8v64QA47+AB6SKiEF1U5ZFWIZcJtwU2UcQd2T4AK/KwMOilXhYHh74O+y2QIG62k5S8gbmIaaHRGxG5++55Jx60jGiQFUh8agRJE71a1lKl1bqgkXCRDWpteYC0KDpeZ1Ss/X2Wur2Dou99KPziCN/doQJGim/gMSTLb0+zDxFLFus8E4uAUGQIvEQv36gzQrlAiLEWGcd6Nd1BuSAny+wbhm3ZSJyLIoogoZqT67bB/RK01Xt4gMbpL3pRMU7mWCYWh2wi6WPF6h84sYAqnaYLaOZISfKNBlWwIJC5uDXEy0zSLd0wkIKI5382604UDXi2d7/EY2lU7TBcliesk/mG+lMonOCI13jQVbrQGEKFaHpfN/DdaR3GRlXTyI29xN8uoSunCxEF/GyU3fEwJ9Pdbip8gceNoCFJ9ax7IU4DLEF8/aYQK7XNgcRS+aJkzedmL7OyohXkwDzVgKUQwMFPJnzDTjQhIH13B7l4fGKobGg4a0Nj5x8wUYHemCusIHzSduIfINL5txzLGs8C4clDrD5WyaCVx9K57jgDBw/aQE9CTZ98pat92omXGJycDNaOVPFHALXDiUJAihstrIdO1A8clsoqlM41deumM3zVrpzwYDdSVR5DC8QhBOaGahxeLS0/df8RUkt8sJ0rgGI+8JpXIZ4/Cu5gA10utUb3gMzsWBDckm07qK9Sjk8SaWKCCZqFhCs51SpQKtxOCH2GqmjlCQJUtgjIW4ESWjon4FmjX5LMRaQlEOIz/NJoNdC7asCFc1pJ0R4KobZXxTglPDszFVD7pyPMfoByFTUs6vGkKoe0jGcBfaANUQccs9Un0/0D8z0D8Bg6XbgGEAeQk4bNKKsr3X5vmtBZTa2/TtsBd/tpEnwRqsRMpWNLyCkLYdPnFemqY34GWtXF8RNgI7Wzm5a7gLR80aj7kgUX+XEfR3/kTNY7QLSGHT4dbYMDNmP8tAVITBJ+74YWEG9fsDnGiwd2odS1YZDQ6ZUMZcfucOcYNUBvUk8wlaCVD1nArlIU6C7EWl2krOnnvpSzMJvdEY4HgLoubhI+bEvJTzu9UVwhFh1Y63IULmg5WES3Miu4o+8mCx2xtLaKodz4eXZOZtUOINWtVVbgSrocMLfuiwtQ2NV2LMg7czDnHkTFDof6qFq7YDmgbqBq4OGUT4DZeogMqJWFvomVCt/igf4oA0ZggDLpFhhC37YrKyIdv6E76hEj8TEnjT4BZuT6ZBf60JWwoRWCos+aYajIsq6Fv49dmi0WwRaQX1wti3VokTCe1IYIbTT5IMzA4DKp2+AVYGSKl0p7QyuP9xux+JxgyBAUHS3rMO6Ch0WqmoFsd70ZMIMK2uDYFqG14/EomJZlV+eXiP3BvFkWwfZyG0GcCdiNMPTs+qHBCtf7AKACjW/0hDzDcKsH0+pgR5vA5wDMqRqRiFnkT3sh2WGu4/umx8Ousyhj/fjU51VneNQXl0RUSWV5m+vkZAUki8kD1xRfFgi0AIr5apPAFc3cF1gXtF4MNodRKeYF7cjZjNKvqUiM/dExtJHSqIMky4OM8DJiHVqCBmNDIWKjMOIGEteoWTnqS5vz4IP+Dc1AvihZfIJDU5kGuE98m3k5RJCYVevDOESq3KzbjvTwWLY6T/fTyfASaoNBOBhog8t1Od2zSc6mp0HTHBv0VbPuYLqAznP2fbBuX4976Roa09MuUG9VjN0BjJu6RXBM2+Vi7WMEiglsDmXOvguKU95USntiUvctqfkyN0iDOzcEzg1byJQesrQn9UOo0Smhxpy79TSlwDZvtWBpAO26UpPihh6ZUk30BUxtxNepDhYNwxz7vXO+8z23QXFRGq+cnWaYAtY3Ml8HeBI4AVLzO7eW8zP1u1QFMLXv7UMKjBRBrSfVpZY6v5fs36bgJp/mPNVMZB9HaL4o0l0xmqVERlu2tdgYAnKi+Ljl2QVrMG6Uxx7hUfXaCSE448WuZBcMzcou9D6EXWE0xfbCeGifeIfAhrAA0SLZSCLiYKaK5kewwbJy6iVE16DryjG6koVYA0XM24PtlXbjt5qqleDK0BbMg5J6ePFIe9juhDQXRWyFwnwsE1IXwVAN0TbYX8Sj3FtAWt3aTVS68aIquVdwYmgrAVqZDCb80UAfShH9VKtUsAtFpf7p8YE0E9q5f3B7sidPkmTapjRIiOiGjBDagZPmVBlpb05ld26qttWKFUVL6sNYHYajC+L+jVpjLoBdeC8bDx6fktLmPP1HizXVpLNsIyuPCKLExo9DGlmAQL487A0VMHYcQzDRs2eY0H5NrOErD6DzLL+J3zsA5YzdZfyFxo4caazTFA3iXkIrSndIi6pWr7EuziXdmfRB2gYGmBnxtPHc7Ao6XWImAw8WUIT+Vc7XC3nbIp4AABIZSURBVICwa8urrsE7gsuhamW7KOKBXe7m5VJRIEIzgO8CjNYbSR3JNBJzBtvfr5uR9FLWNxgfO8kG7Gyz60SUdyDaPNqFz7Adg01hWjdKDxMyq5dKBZ6VIQRUWea1grbZQFCZqTpFhj/ZiGUuWzrRwRRUmZue8GxZsBvV4y8da+KKhHbsSef38ZCdwKSPyGSulopdby6bIIAXClOl0CwQWu3RBOdCETDqGyEtkh/Rk/IkqzyaZcgRZAX0CFV/8SS5FEI4+gvPZc/a28nhzIc+kRWNBWP55rnH0ro8Q3+Qo0Rj4J4G5w7mTtBz/dnAfGjUHWjts0RoHyPj+wnDT5BBPOA51lECa2fiXMpz1lDznLWtbuq6OACxG+2IXXMJPI0l541P1Flc3RSDnasm1Ibm1GhZ5T9Acbyqm3kbEfDw+Mx+KyWhs6E1I4JpG3l9MMBCt4ySykRTho6dE62y+dzkZtDW2oKql+fcZfPZYnIUzZ2fJI0g6wgsB+O3nJSTwQljiHdqxqyOBK8WITttwjTCc8G6DAWZU77/tBnmP+Je5NFeVvvDKWTHNIho8FkvoXulRIbsj/yeEQmx+N+EBmFmrLbMNwpjaAaUrli1z1YsD7eUFEO/DA++98SaUez5h8+LbfTLIy11c/twywEElzS/j5pZ8fi3HcmSwja0ipvTknp754ciiqb2Udug3uRiIan0X/tYDzX7eP4c3W63/PN8NDRLx/3SQ5T6lrB83v+OaJfL+9+eQuZPFn/jmZcubFKIg0aUcbX5sMGuE8cP1qu3PY/JfFfurChKMqQoyrJU++ii1DfGswOHVtbYkJV7xNIHQai0uhL+GjBLvWneJdBmWZRbi+4S+u/DYbzNJkUMKRWO4EWEf/hjm9tOL9cqK2oJVrzxTiT3W0Bj6o/HR0EoxOYL9jiZ5te5Elq6TasHbd0K0fya75LnkqE7rD5BjO+Y5xpvgALCyW/EoASHHufVOCsqNfobvb1b2wDYEl3t97TPdtz0cXsrDtGXl6hpsrZVOLnhjxwWFx9hiuxrNYREG/XSxQePDbslDLOfqlLGDgiGlDUuf+pkyBz8Z7naVFhSa2XFc5m3bNU4vBxtpi60cHj1Gh/Dboo1+iXL8CX4VG/b7AjNF4u++piCDck7eG31gYtT/0X9enyyqWf4R49OZUfqqdrkdaw4GITbm9aqlKOQK4okdTpnUQGugGif//RJyWt6OhH6IotVFhSzY6veBQNGlQ5cQbdWwb+Vf96FfR+ChSU2jpPh3vIDcO0oXj1AtzVZ1zixKOfIzs8b/jPHVu8vmHkNfEzSiUabX5lcG3mqYSzK+b49VId5Mlj4547i3Y2pF2cfecy4Xxf5XBT6eMzhAl/L/cRo93aBHn3sbN+fCBn+PLjMqxb556NBWgTaJrvRsCUOWNXTc/5rumXns5n68u3Npt8E6W1AzdO+9cmJc0b4RV0FMfgfNNyeOC/Udxnnv+y+/gSkS+Y7qbY8aWm8+UuJ49/H6xXk99SnKqMu/wIEW5W62KJiiZPH0/q+UMbs22hVCLS1viAZcvGHjxB+PR5/RskLvDt51JjmryVn7I9UvfztYOP/OSPkTcgIYZjVHqYymnpfc2rkrXNTx+wUDdOWf/xTR4V/AfsbsplvLspIH8xHW8cLeOi4gedsR5uw2s8VTRvlyb++FHeI9hPFqk9hkRHWdfk4+7wVu910vZ5Od7vD7XN2VHUdozI5C3IF0HL/H0KihGz6KVr4ngtHz5Shdf+QMdM495Wep2qpXbkb/wGIMn85Cy3inEvik3dexR1Mslbh5rbO/nsL8QRR5mzzjYlt3WAr0e/TVTEIUZmbfOv891Foghtne2c93W0PxWFLuMTZZ6/PEv8f/A/+B/8/IIrcNFvtk5LBK4Cali1RidO17zjJfuVlqev+B6VWlGbJ+pAPZxfFCiEUWgpchQGtaSl74eAyShoa0nF2HU12fpKl/z5K6WpdfEInNwM/aOyvQYRD5GQFmqcZ/eOwWK/+HfcjWK2XJzxonc8HShsiQ2zqOyo7WzhBMmNonJb+G+by7wNid88Nop0b8093BaAx3VifXyUBAScQVtgOuEuELG1QG2JSfaifpGAdzSb+P7Ay7mp7HjyiQIcgzK+37TShPasC/d4Jzw85iNiw/3kuEcHnGcHLrJ9EkLFQ/kdx8XZX3Ub3oggVds9ofPBhv8VVxEFNHkm/hQarl52zbUJ6RmaQ5iUFmqV3hQfzyf5P0FiU5JKOKheDUQc9cXM6UJ+zUS8ipONmjrPvNcvVKmCdPehDRKHaJaRVPFK4HMm6XW6E2mjo/16v3XUWY6PKyZWxdaQJ6mUidTxTBWiK64I/sYPdhLMEuckHzbpy8WCLRSkJskwYCcJhIWy/K/BmZdWFqGLtPP1tUdL9CBty+WBkYcjBhZr3+qzFwKB0VHxEcMpstnJmIhT+7BAlN4rzg0gzkoxln7PKr7V0ghmZmHXLl1gvb4ddKWydvjjR8C3ICtkuVwLp/WvpxE2RYBCKCPY7iGPORZx4Dk392yLbLjvITREtZ5/TqC2c/arrlkXZYJyzGlmBtuIpkAyFM1cVyibZ5K8hSU1E5kIBx1/F1uK9sxO7IPLPg341lcru3gIts2j3EEfDx8w5HMnE2liFKz4r04bt4zWmfegIHtLJDdI0jQmsARHokJvS1qnQGmmohYCvRMv+T+EJGJ+eEH9wIcR1pPvCtlL8tBucThTcqNiquwsAm15EIIlsbOKPsJJIkAYDh9ELtJ00QYk2qIG6rHvEem+UXBHTzndwKnXg0fbNlgg5AFiE+j4XGm+Vr3PL2IpinX8qEh8sNeWBRcsa+5Eu9tz9RoSOa9Exn+5zq7wNaqUz1mCQLpZB8Zg9FDRRPOgU0BvF+qSgWAf2iMcWnH7n6Y3mPfUZVJKBvr+DOzWeexPIC4dQc6wJ0kyH0xrrkm2nxBfIJRg08QBxDE1xjqM8vy1/FMU2l0s8PNaJUKlQ9HSKUxSDqCX8AfXlGVrCSh3v9Qr2/HtJM9HQFlogD2C3/GhhJkpRvfvhst7zVN4wUQMsmxgi4HEFIUobSIHpKzOBVS6MoCL7TGxelzJWfcA3nO4Ojbu2mB7Fmjcag0mD72yARnNuowjaE8FZRYy2Bf0aEKUBM8YKWihbH+lLQQ4lHwO1R9uSPAFtYgcnXAnqaJefEYJN+B0qjzjs0efRtgVzC50Tt4eb5C3yz37mQ95hp1aJaaUgNs0NtqCNxpIpNWibMhpKJR5ulsU8PKTTjxg2A8lH2JjKNAXyL5emPNDH88UuowfB0WYxbnJDOn6qOxa1t7VJHAp8qPq05LIItTH9+UISoXSAynulTOKBxbq311sbzw/pl1tnZHygg+LtEtTgFeXRaqrIUAmy0kW7UrKS+Fzkinj78lxwWu8ugQrQ1XLeDy+3i/pJ+BKrZ0gVraRQtVh1Mv563HpINRkXKNmtNdIRpF2qYTYt92Z3fmssb5VzMjy6OvSI0HRra0mXFA7aBi5ma0x5uer/DnRgLqdw4t12yREX/W2cwmwDLfarg7cWJvycrAhcuJkwJ4FwACNy/rweb1QJl9Ddg51KQ83QqGxEFfHs6JxJ1+lkNEP0gGTWCQD1Td5D+lY40MZMWBuTvRdEGRQb3I8qP0pQZebbCHjv8Cxyvu5uWkHUeWAHmpCvlzQRjBhzrMohSMrDoiSkmCr43RLxvImU7VeBBQq4DLwrCuTHSVUZm2LoocSSNMva/2jZpy26rhY9Fbs1Fvs9FRKvh/0uNESh0SLvCIb24SoahijJCsShDaSowuU4n52Go9ukOOzKQA+BxHF8v4wG3UbD85ysGLbJTzAy1ZJy1E3hZ729iIhtBfaKD+nVWUvmiMqGlxb4AN5hPig3vHhwb7AQJMWRPBFblh7al/OoWDteHHwrgBMFaewl621+PRqhjclign8e0sW91wLv2ipAlPq60krTvEN2OFqdS8FmjLJYtDqcDWK2iPNJsXNW8a+H1FyoASsmDb1tlcNM5/wBiYp+4VrA7noTvkYCQHG93Sm0WUoopz30r0HzwCZ7QzRimo+7ey+K/XD2rNvjHwbu/kXjt1i/xxleNYP8GfAexKSEwiPuPNK3vMeQmqW6aW4pXy5FOfbmH10d2n4SWqzA3Zx7ugUrhwqTrcYV81/DG/22vwNdjf6+wAQNbpRRFt88YegO7caqvwLxz49joAS9dGS/S1TP8LIJ1beBI2HfHIYh0RYJwcT6TifmBrw8Zfm78HNkBSmGtdTKZvZPLcn7JtvXEA++fh8HFP0hRWqNvhBxfOA1rvlJWHcZ2a9ACvOnIHCQj7/owMyDVx0RvwnL70+kaGw4hlaWG99G5OVpo9+D0bfajAOYekfWXfptyWf/vvTtyXfXw3wmqTse7VNTXkP/18osHwAaC33v5Z0psiuOF9oNohlySul/Hvw37NQmdJ9W1+mXP45fMmGb1VJuv6kgroJ0chkQV0wxTfmtrV+laxYP7T2wh+EjrFvj8HLNJ1t//0fSj+L9tFje8r+vG0kb0ESuFyPqbJHdca4pwQDrxuW83LGzd/4hCLJkepvJFlY6FoeTXs6AYyeLBAX9vPS9fyu91o2dyUmvdyYf6KpD6AdPMTPIZJXz9W/mgp+ByJsOcQuXLqvoQVyJfV0a/RM78m+Dt7saRtNT4vax6zUtHOKbHA/ev5++8gyuc8P63cvoOHevYBpVVPTj7j+bk9rziqoiuUtgLcDCkXnlA/8x8H4o0D+l63zNmSTh8eK/lKfdCVFyHffFjj7qYnha//9JTU0LZczfCfH/mTqx3wbRdPJvD+F/8D/4H/wPfgIcBvv7Ryeqv2HqJCafstaPwNxxIFK9d6CLjOfQvisBu5XdwL50mGpd0Wc/qNmUXkqfbkzqIWT1i91yaCwy7tW/88rraQ9bHx8fFk3B02ybfA7L49ciTdfYz9Yf+ONR5fxl6B/kNX/p4CMPw78IBkvNgON1VtoHcQuiv2zLhhtPGnmiRsMRQw2TP7TGMamZBhdYD8hPeiM7/ndg/MVw25EXs93Z+C+DjpM2XizovbS6NWcPJQOl2Zsjmn4SUUv4s2yO7o1zXI4+0Z5iExHr5JgNYEvqb7pjHOcylJyvtCU19lnTrkwb0pfR+bhpFN37ZsMEOkk49EJMe2svGU7DuqmeX/cBSemT6PEBkQZNEH1WpTvRaD7bvgeNqBKNbpExPK4aw2OqJcKpCw+V2v7Z+I5Hb4tMMter8s0mxWOlgc+2ZsOjeKy1u1G0hAv+h0NvXNJh0/jklYNHTPGwLhQlwHn9sW88I+k5q15UNoqMJLhtVRLnYuyeyqVx3sHjYP8Yr8mAdg94TJp4QLZfI1+HjiGmdP4mHpQ/GB4xa+1En5EyHpuUBlckCklSc7QgEEL0voGHFl9wz3uBhz7dJ7OG07C8txL8Go/xeZ845QnoV4LFfk/pd6nv9gmz3zOtdBAjQdIom7IJGJHxr7+Fh6NNsxd4mANNa3Y+/hYeoaxpf/kVHlPC2/SrpRlqGjuCaKaVm9WEP/b7fTlfjn493MoGXm/ikfWO8iu6IuuxGmn34PI312O139/XY38YMDzIQ/d0PdZwRjjt7Mv4I2IhngnabGaycMfDaYSLuvDww6vxmj887R6toXhENAuihUdMYxwUD6rbGH+wY90pfyTletC5IM8IaAtUza7xmPxFCW8DzWtObGYoHqjRNLcLD7Ig6AUeHgeP1V+w1t4zHsmHX+FBDxFneJz+qvFwKjxW8IxdL6dZgSYdF5W7B9ocN9IgnXbC+lslQCyXRjJ+pND7Aw2uDVlPxy385+glHnKJB+Re7hgeS4bHXaPSMTCG8ujB8VOGx1ALenv6kTKoPaSvgmjVp0aHdryvB9UfGfmM+/PZeYjgtcO++TlczAGPbKOP6HwcHTiEHM8Xn6huRjwZbjS25byxzovzgOK0Eyk68wHFY4gQDMy1jOHnkCa59Q4Xhsf9BCFHuywWJ1o5ESGb3IjoI3IRXxdnwMOZ483i04Bz0c5YWAwXAuXo4eD8uTiPAY/pBZ8WnyfCKxMGsNpL9nEJZ0ouJ1RUL5eQJM2+qCdyN5mUyszdkus7qmT8yZIqghtdwSV7Yi8u4Nl0vaYT0PTkwXcFktDnJvWNLFJTsGGQz3v2YoJocGMXaSp/tKOf9/StDPb/B2IRJ1HOUFNGAAAAAElFTkSuQmCC",
                    height: 100,
                    width: 100,
                )
                : Container(),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            (_count >= 4) ?
            const Text(
              "Dream Company : Barclays",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            )
            :const Text(""),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                (_count >= 5) ?
                Image.network(
                    "data:image/png;base64,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",
                    height: 100,
                    width: 100,
                )
                : Container(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          _increamentCounter();
        },
        child: const Text(
          "Next"
        ),
      ),
    );
  }
}